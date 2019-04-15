<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Craw\HtmlDomRule;
use App\Model\Craw\HistoryParse;
use App\Model\Craw\UrlCraw;
use App\Model\Content\Post;
use App\Model\Content\Category;
use App\Model\Content\Tag;

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

	function __construct()
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
    	$this->url = UrlCraw::where('id' , $url_id)->where('status' , 'active')->firstOrFail();
    	$this->initCrawler();
    	//return true;
    }

    /**
     * [initDomain start crawl from a domain]
     * @param  [string] $domain [existed domain from database]
     * @return [type]         [description]
     */
    public function initDomain($domain)
    {
		$this->domain = UrlCraw::where('domain' , $domain)->get();
		foreach ($this->domain as $url) {
			$this->url = $url;
			$this->initCrawler();
		}
    }

    /**
     * [initCrawler bắt đầu lấy nội dung từ trang web]
     * @return [type] [description]
     */
    public function initCrawler()
    {
    	$this->crawlTool = $this->crawlTool.'?url='.urlencode($this->url->url).'&json='.urlencode(env('APP_URL').'/upload/rules/'.$this->url->id.'.json');
    	dump($this->crawlTool);
	    /*$curl = curl_init();
		curl_setopt_array($curl, array(
		    CURLOPT_RETURNTRANSFER => 0,
		    CURLOPT_URL => $this->crawlTool,
		    CURLOPT_USERAGENT => 'crawler',
		    CURLOPT_SSL_VERIFYPEER => false
		));

	    $jsonData = curl_exec($curl);
	    curl_close($curl);*/
    	$jsonData = json_decode(file_get_contents('http://localhost:9000/test.json') , true);
    	dump($jsonData);
    	foreach ($jsonData as $d) {
    		
    		$d['title'] = trim(trim($d['title']));
    		//dump($d['title']);
    		$d['slug'] = $this->khongdau($d['title']);
    		if (Post::whereTranslation('slug' , $d['slug'])->count() <= 0 && $d['title'] != '' && $d['title'] != null && isset($d['description']) && isset($d['content'])) {
    			$post = new Post();
	    		$post->title = $d['title'];
	    		$post->slug = $d['slug'];
	    		$post->description = isset($d['description']) ? $d['description'] : '';
	    		$post->content = $d['content'];
	    		$post->media = $d['image'];
	    		$post->source_link = $d['link'];
	    		$post->save();
	    		$post->categories()->attach($this->url->categories()->pluck('id'));
	    		dump($post);
    		}
	    		
    	}
    }

    /**
     * [stringIsNullOrWhitespace check a string is null or contain only whitespace]
     * @param  [string|text] $text [input]
     * @return [boolean]       [description]
     */
    function stringIsNullOrWhitespace($text){
	    return ctype_space($text) || $text === "" || $text === null;
	}

}
