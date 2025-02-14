<?php
namespace App\Http\Controllers;
set_time_limit(0);
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Http\Request;
use App\Model\Craw\HtmlDomRule;
use App\Model\Craw\HistoryParse;
use App\Model\Craw\UrlCraw;
use App\Model\Content\Post;
use App\Model\Content\Category;
use App\Model\Content\Tag;

use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;

/*
Declare the class for auto crawl by cronjob in the future
将来通过cronjob声明自动爬行的类
 */

class AutoCrawlController extends Controller
{
    protected $crawlTool = "http://localhost:3000/crawl";
    /*
    @url - crawl from url
     */
    protected $url = '';
    /*
    * @domain : crawl from domain which mean contain many different url
     */
    protected $domain = '';

    protected $imageTypeArray = array(
        0=>'UNKNOWN',
        1=>'GIF',
        2=>'JPEG',
        3=>'PNG',
        4=>'SWF',
        5=>'PSD',
        6=>'BMP',
        7=>'TIFF_II',
        8=>'TIFF_MM',
        9=>'JPC',
        10=>'JP2',
        11=>'JPX',
        12=>'JB2',
        13=>'SWC',
        14=>'IFF',
        15=>'WBMP',
        16=>'XBM',
        17=>'ICO',
        18=>'COUNT'
    );

    public $dataCrawled = array();
    public $folderData = '/upload/crawledData/';

    public function __construct()
    {
        # code...
    }

    /**
     * [initUrl start to crawl from a url 开始从网址抓取]
     * @param  integer $url_id : existed url from database
     * @return [type]         [description]
     */
    public function initUrl($url_id)
    {
        $this->url = UrlCraw::where('id', $url_id)->where('status', 'active')->firstOrFail();

        #set crawled data stored folder
        $this->folderData = public_path() . $this->folderData . $this->url->id;
        
        $allFileData = $this->dirToArray($this->folderData);

        foreach ($allFileData as $file) {
            $timeCrawl = explode('.', $file);
            // dump(date('d M ,Y', $timeCrawl[0]));
            $data = json_decode(file_get_contents($this->folderData . '/' . $file), true);
            array_push($this->dataCrawled, $data);
            unlink($this->folderData . '/' . $file);
        }
        $this->insertDataCrawled();
        //dd(self::$dataCrawled);
        //$this->initCrawler();
        //return true;
    }

    /**
     * [initDomain start crawl from a domain]
     * @param  [string] $domain [existed domain from database]
     * @return [type]         [description]
     */
    public function initDomain($domain)
    {
        $this->domain = UrlCraw::where('domain', $domain)->get();
        foreach ($this->domain as $url) {
            $this->url = $url;
            $this->initCrawler();
        }
    }

    /**
     * [insertDataCrawled insert into db data crawled saved in a file json]
     * @return [type] [description]
     */
    public function insertDataCrawled()
    {
        $allData = $this->dataCrawled;
        foreach ($allData as $data) {
            foreach ($data as $d) {
                $d['title'] = trim(trim($d['title']));
                // dump($d['title']);
                $d['slug'] = $this->khongdau($d['title']);
                if (Post::whereTranslation('slug', $d['slug'])->count() <= 0 && $d['title'] != '' && $d['title'] != null && isset($d['description']) && isset($d['content']) && isset($d['image']) && $this->checkRemoteFile($d['image'])) {
                    $post = new Post();
                    $post->title = $d['title'];
                    $post->slug = $d['slug'];
                    $post->description = isset($d['description']) ? $d['description'] : '';
                    $post->content = $d['content'];
                    // $post->content = $this->extractContentImage($d['content']);
                    // dd($this->extractContentImage($d['content']));
                    // $imageName = $this->saveExternalImageToDisk($d['image'] , true);

                    // $post->media = $imageName;
                    $post->media = $d['image'];
                    // TODO: Save image to folder first on php side
                    // TODO : check high defintion Image on php side
                    $post->source_link = $d['link'];
                    $post->status = 'publish';
                    $post->save();
                    $post->categories()->attach($this->url->categories()->pluck('id'));
                //dump($post);
                } else {
                }
            }
        }
    }

    /**
     * [initCrawler bắt đầu lấy nội dung từ trang web]
     * @return [type] [description]
     */
    public function initCrawler()
    {
        $this->crawlTool = $this->crawlTool . '?url=' . urlencode($this->url->url) . '&json=' . urlencode(env('APP_URL') . '/upload/rules/' . $this->url->id . '.json');
        // dump($this->crawlTool);
        /*$curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_RETURNTRANSFER => 0,
            CURLOPT_URL => $this->crawlTool,
            CURLOPT_USERAGENT => 'crawler',
            CURLOPT_SSL_VERIFYPEER => false
        ));

        $jsonData = curl_exec($curl);
        curl_close($curl);*/
        $jsonData = json_decode(file_get_contents('http://localhost:9000/test.json'), true);
        // dump($jsonData);
        foreach ($jsonData as $d) {
            $d['title'] = trim(trim($d['title']));
            //dump($d['title']);
            $d['slug'] = $this->khongdau($d['title']);
            if (Post::whereTranslation('slug', $d['slug'])->count() <= 0 && $d['title'] != '' && $d['title'] != null && isset($d['description']) && isset($d['content'])) {
                $post = new Post();
                $post->title = $d['title'];
                $post->slug = $d['slug'];
                $post->description = isset($d['description']) ? $d['description'] : '';
                $post->content = $d['content'];

                $post->media = $d['image'];
                $post->source_link = $d['link'];
                $post->save();
                $post->categories()->attach($this->url->categories()->pluck('id'));
                // dump($post);
            }
        }
    }

    /**
     * save external link image url to local disk
     * @param $externalLink => Must be image url
     * @return '' || [local image link]
     */
    public function saveExternalImageToDisk($externalLink, $resize = false)
    {
        $imgSize = getimagesize($externalLink);
        if ($imgSize[0] < 1 || $imgSize[1] < 1) {
            echo 'image illegal!. <br>';
            return '';
        }
        $valid_types = ["image/png" => ".png", "image/jpeg" => ".jpg", "image/gif" => ".gif"];

        $externalLink = preg_replace('/_([0-9]+)x([0-9]+)/', '' , $externalLink);
        $externalLink = preg_replace('/(https:\/\/i1)/', 'https://i' , $externalLink);

        // dump($externalLink);
        $external_image = @file_get_contents($externalLink);
        $imageName = $this->generateRandomString();
        
        if ($resize) {
            // dump($externalLink);
            self::makeThumbImg(
                ["width" => 510, "height" => 357], 
                ["external_image" => $externalLink, 
                "pathToSave" => '/thumb_images/'.$imageName.'_thumb_normal'.$valid_types[$imgSize['mime']]]
            );
            self::makeThumbImg(
                ["width" => 255, "height" => 178], 
                ["external_image" => $externalLink, "pathToSave" => '/thumb_images/'.$imageName.'_thumb_min'.$valid_types[$imgSize['mime']]]
            );
            // dump($imageName);
        }
        $imageName = 'images/'.$imageName.$valid_types[$imgSize['mime']];
        Storage::disk('public')->put($imageName, $external_image, 'public');
        return $imageName;
    }

    /**
     * create new thumb image for saveExternalImageToDisk function
     */
    public static function makeThumbImg($size, $images)
    {
        if(isset($size['width']) && isset($size['height'])) {
            if (isset($images['external_image']) && isset($images['pathToSave'])) {
                $img = Image::make($images['external_image']);
                $img->resize($size['width'], isset($size['height']), function ($constraint) {
                    // $constraint->aspectRatio();
                    $constraint->upsize();
                });
                $img->save(public_path('upload').$images['pathToSave']);
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    /**
     * extract image in content HTML tags
     * @param $content => Should contain img tag
     * @return $content => new content with new Image has been replace with local image
     */
    public function extractContentImage($content)
    {
        libxml_use_internal_errors(true);
        $dom = new \domDocument();
        @$dom->loadHTML($content);
        $dom->preserveWhiteSpace = false;
        $images = $dom->getElementsByTagName('img');
        $retContent = $content;
        foreach ($images as $image) {
            
            // echo $image->getAttribute('src');
            $imageUrl = $image->getAttribute('src');
            // dump($imageUrl);
            if ($this->checkRemoteFile($imageUrl)) {
                $imageName = 'upload/' . $this->saveExternalImageToDisk($imageUrl);
                $retContent = str_replace($imageUrl, $imageName, $retContent);
            } else {
                $retContent = str_replace($imageUrl, '', $retContent);
            }
            
            // dump($imageName);
            
        }
        return $retContent;
    }

    /**
     * [stringIsNullOrWhitespace check a string is null or contain only whitespace]
     * @param  [string|text] $text [input]
     * @return [boolean]       [description]
     */
    public function stringIsNullOrWhitespace($text)
    {
        return ctype_space($text) || $text === "" || $text === null;
    }

    public function dirToArray($dir)
    {
        $result = array();

        $cdir = scandir($dir);
        foreach ($cdir as $key => $value) {
            if (!in_array($value, array(".", ".."))) {
                if (is_dir($dir . DIRECTORY_SEPARATOR . $value)) {
                    $result[$value] = dirToArray($dir . DIRECTORY_SEPARATOR . $value);
                } else {
                    $result[] = $value;
                }
            }
        }

        return $result;
    }

    public function checkRemoteFile($url)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        // don't download content
        curl_setopt($ch, CURLOPT_NOBODY, 1);
        curl_setopt($ch, CURLOPT_FAILONERROR, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        $result = curl_exec($ch);
        curl_close($ch);
        if ($result !== false) {
            return true;
        } else {
            return false;
        }
    }
}
