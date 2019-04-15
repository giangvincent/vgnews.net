<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');

    $router->resource('/dom-rule', domRuleController::class);
    $router->resource('/history-parse', historyParseController::class);
    $router->resource('/url-craw', UrlCrawController::class);

    $router->resource('/posts', postController::class);
    $router->resource('/categories', categoryController::class);
    $router->resource('/tags', tagController::class);
    $router->resource('/navs', navController::class);
    $router->resource('/options', metaOptionController::class);
    $router->resource('/datas', metaDataController::class);
    $router->resource('/layouts', layoutController::class);
    $router->resource('/medias', mediaController::class);
    $router->resource('/users', UserController::class);

    $router->get('/api/rules' , 'domRuleController@getRulesApi')->name('api.domRules');
    $router->get('/crawl-url' , 'UrlCrawController@crawlUrl')->name('helper.crawlUrl');

    $router->get('/change-current-lang' , 'HomeController@changeLang')->name('helper.changeCurLang');

    /**
     * Api route group
     */
    $router->get('/api/tags' , 'ApiController@getTag')->name('Api.getTag');
});
