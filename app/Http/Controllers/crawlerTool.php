<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Craw\HtmlDomRule;
use App\Model\Craw\HistoryParse;
use App\Model\Craw\UrlCraw;
use App\Model\Content\Post;
use App\Model\Content\Category;
use App\Model\Content\Tag;
use Goutte\Client;

class crawlerTool extends Controller
{
    /*
    @url - crawl from url
     */
	protected $url = '';
    /*
    * @domain : crawl from domain which mean contain many different url
     */
	protected $domain = '';
    /*
    @domParseRule : Contain Rule for crawler work, this is from database with every url
     */
	protected $domParseRule = '';
    /*
    * @replaceRule
     */
	protected $replaceRule = '';
    /*
    * @domCrawled_list : List content of browserkit for List or a url
     */
	protected $domCrawled_list = '';
    /*
    * @domCrawled_detail : contain list of detail Url
     */
    
	protected $domCrawled_detail = '';
    function __construct()
    {
    	# code...
    }
    
    /**
     * [initUrl start to crawl from a url]
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
    	$this->domParseRule = json_decode($this->url->rules()->first()->dom_parse_rule , true);
    	$this->replaceRule = json_decode($this->url->rules()->first()->replace_rule , true);
    	$this->crawlList();
    }
    
    /**
     * [crawlList Lấy nội dung từ danh sách trước]
     * @return [type] [description]
     */
    public function crawlList()
    {
    	$urlClient = new Client();
    	$this->domCrawled_list = $urlClient->request('GET' , $this->url->url);
    	//dump($cShift);
    	$data = [];
    	$i = 0;
        // lặp qua rule 
    	foreach ($this->domParseRule['list'] as $list) {
    		$tempTitle = array();
    		$this->domCrawled_list->filter($list['title_filter'])->each(function ($node) use (&$tempTitle){
    			$title = trim($node->text());
                echo $title;
    			if (stringIsNullOrWhitespace($node->text())) {
    				array_push($tempTitle, $title);
    			}
    		});
    		dump($tempTitle);
    		$tempLink = array();
    		$this->domCrawled_list->filter($list['link_filter'])->each(function ($node) use (&$tempLink){
    			if ($node->attr('href') != NULL && $node->attr('href') != '') {
    				array_push($tempLink, $node->attr('href'));	
    			}
    		});
    		dump($tempLink);
    		$tempCover = array();
    		$coverAttr = $list['cover_filter_attr'];
    		$this->domCrawled_list->filter($list['cover_filter'])->each(function ($node) use (&$tempCover , $coverAttr){
    				array_push($tempCover, $node->attr($coverAttr));	
    			//echo '<img src="'.$node->attr($coverAttr).'">';
    		});
    		dump($tempCover);
    		//array_push($data, $tempData);
    		$j = 0;
            // Lặp qua link detail
    		foreach ($tempLink as $link) {
    			$data[$i]['title'] = $tempTitle[$j];
    			$data[$i]['link'] = $link;
    			$data[$i]['cover'] = $tempCover[$j];
    			$data[$i]['detail'] = $this->crawlDetailPage($link);# lấy nội dung chi tiết
    			$i++;
    			$j++;
    		}
    	}

    	dump($data);
    }
    /**
     * [stringIsNullOrWhitespace check a string is null or contain only whitespace]
     * @param  [string|text] $text [input]
     * @return [boolean]       [description]
     */
    function stringIsNullOrWhitespace($text){
	    return ctype_space($text) || $text === "" || $text === null;
	}
    /**
     * [crawlDetailPage crawl content detail of a page]
     * @param  string $detailURL [Url of the page]
     * @return [array]            [The content contain in a array]
     */
    public function crawlDetailPage($detailURL = '')
    {
    	$res = array();
    	if ($detailURL != '') {
    		$detailClient = new Client();
    		$this->domCrawled_detail = $detailClient->request('GET' , $detailURL);
    		foreach ($this->domParseRule['detail'] as $detailKey => $detailValue) {
    			$res[$detailKey] = $this->domCrawled_detail->filter($detailValue)->html();
    		}
    	}
    	return $res;
    }

    function __destruct(){

    }
}
