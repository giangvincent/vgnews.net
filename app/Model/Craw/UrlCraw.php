<?php

namespace App\Model\Craw;

use Illuminate\Database\Eloquent\Model;

class UrlCraw extends Model
{
    public function rules()
    {
    	return $this->belongsTo('App\Model\Craw\HtmlDomRule' , 'rule' , 'id');
    }


    public function categories()
    {
    	return $this->belongsToMany(\App\Model\Content\Category::class);
    }
}
