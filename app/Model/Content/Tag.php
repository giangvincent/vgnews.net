<?php

namespace App\Model\Content;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Tag extends Eloquent
{
    use Translatable;
    public $translationModel = 'App\Model\Content\Translation\TagTranslation';
    public $translatedAttributes = ['title' , 'slug'];
    protected $fillable = ['code'];

    public function posts()
    {
    	return $this->belongsToMany(\App\Model\Content\Post::class);
    }
}
