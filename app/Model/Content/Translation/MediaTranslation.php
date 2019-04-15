<?php

namespace App\Model\Content\Translation;

use Illuminate\Database\Eloquent\Model as Eloquent;

class MediaTranslation extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['title' , 'slug' , 'url' , 'url_thumb'];
}
