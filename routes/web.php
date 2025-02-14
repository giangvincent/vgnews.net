<?php
set_time_limit(0);
/*set auto crawler tool
this tool is run auto by crontab that set on the VPS
* URL : auto-crawl-url/{url savedin database}
* Domain : auto-crawl-domain/{domain saved in database}
*/

Route::get('/test-auto' , function (){
    
    $urls = \App\Model\Craw\UrlCraw::where('status', 'active')->get();
            foreach ($urls as $url) {
                dump('Init url', $url->id);
                $crawl = new \App\Http\Controllers\AutoCrawlController();
                $crawl->initUrl($url->id);
            }
});
Route::get('auto-crawl-url/{url_id}' , 'AutoCrawlController@initUrl')->name('crawler.initUrl');
Route::get('auto-crawl-domain/{domain}' , 'AutoCrawlController@initDomain')->name('crawler.initDomain');

Route::get('get-url' , function() {
    echo $_GET['url'];
});
// ajax routes
Route::get('get-paginate-posts', 'frontController@ajaxPaginate')->name('front.ajaxPaginate');

# Route common of the website
//\Debugbar::disable();
Route::get('/' , 'frontController@homePage')->name('front.homePage');
Route::get('{category}' , 'frontController@catePage')->name('front.categoryList');
Route::get('tag/{tag}' , 'frontController@tagPage')->name('front.tagList');
Route::get('p/{slug}_{id}.html' , 'frontController@singlePost')->name('front.detailPage');
Route::get('s/{query}', 'frontController@pageSearch')->name('front.searching');

Route::get('page/{page}' , 'frontController@singlePage' )->name('front.specPage');





    
