<?php

namespace App\Model\Content\Translation;

use Illuminate\Database\Eloquent\Model as Eloquent;

class CategoryTranslation extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['title' , 'slug' , 'description', 'load_pos'];

    public function getLoadPosAttribute($value)
    {
        return explode(',', $value);
    }

    public function setLoadPosAttribute($value)
    {
        $this->attributes['load_pos'] = implode(',', $value);
    }
}
