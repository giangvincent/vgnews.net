<?php

namespace App\Model\Content\Translation;

use Illuminate\Database\Eloquent\Model as Eloquent;

class LayoutTranslation extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['title' , 'slug' , 'description' , 'content'];
}
