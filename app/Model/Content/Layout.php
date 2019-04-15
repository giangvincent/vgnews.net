<?php

namespace App\Model\Content;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Layout extends Eloquent
{
    use Translatable;
    public $translationModel = 'App\Model\Content\Translation\LayoutTranslation';
    public $translatedAttributes = ['title' , 'slug' , 'description' , 'content'];
    protected $fillable = ['code'];
}
