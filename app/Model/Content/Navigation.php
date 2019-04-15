<?php

namespace App\Model\Content;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Navigation extends Eloquent
{
    use Translatable;
    public $translationModel = 'App\Model\Content\Translation\NavigationTranslation';
    public $translatedAttributes = ['name_display' , 'url' , 'description' , 'page_title' , 'page_keyword' , 'page_description'];
    protected $fillable = ['code'];

    static function displayNavs()
    {
    	return self::where('status' , 'publish');
    }
}
