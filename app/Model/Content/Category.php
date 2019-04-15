<?php

namespace App\Model\Content;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Category extends Eloquent
{
    use Translatable;
    public $translationModel = 'App\Model\Content\Translation\CategoryTranslation';
    public $translatedAttributes = ['title' , 'slug' , 'description' , 'load_pos'];
    protected $fillable = ['code'];

    public function posts()
    {
    	return $this->belongsToMany(\App\Model\Content\Post::class);
    }

    public function url_crawls()
    {
        return $this->belongsToMany(\App\Model\Craw\UrlCraw::class);
    }

    static function getParent($parent_id)
    {
    	return self::find($parent_id);
    }

    static function getChildren($parent_id)
    {
    	return self::where('parent' , $parent_id);
    }

    static function getChildrenFull($parent_id)
    {
    	$children = self::getChildren($parent_id);
    	foreach ($children->get() as $child) {
    		if (self::getChildren($child->id)->count() > 0) {
    			$children->child = self::getChildrenFull($child->id);
    		}
    	}
    	return $children;
    }

    public function scopeIsChild($query)
    {
    	if (is_numeric($query->parent)) {
    		return true;
    	} else return false;
    }

    public function scopeIsParent($query)
    {
    	if ($query->parent == NULL) {
    		return true;
    	} else return false;
    }

    public function getLoadPosAttribute($value)
    {
        return explode(',', $value);
    }

    public function setLoadPosAttribute($value)
    {
        $this->attributes['load_pos'] = implode(',', $value);
    }
}
