<?php

namespace App\Model\Content;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Media extends Eloquent
{
    use Translatable;
    public $translationModel = 'App\Model\Content\Translation\MediaTranslation';
    public $translatedAttributes = ['title' , 'slug' , 'url' , 'url_thumb'];
    protected $fillable = ['code'];
}
