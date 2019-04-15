<?php

namespace App\Model\Content\Translation;

use Illuminate\Database\Eloquent\Model as Eloquent;

class NavigationTranslation extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['name_display' , 'url' , 'description' , 'page_title' , 'page_keyword' , 'page_description'];
}
