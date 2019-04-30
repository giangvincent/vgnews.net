<?php

namespace App\Model\Craw;

use Illuminate\Database\Eloquent\Model;

class HtmlDomRule extends Model
{
    public function urlCrawl()
    {
    	return $this->hasMany('App\Model\Craw\UrlCraw' , 'rule' , 'id');
    }
}
