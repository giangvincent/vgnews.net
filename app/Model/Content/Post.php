<?php

namespace App\Model\Content;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Post extends Eloquent
{
    use Translatable;
    public $translationModel = '\App\Model\Content\Translation\PostTranslation';
    public $translatedAttributes = ['title' , 'slug' , 'description' , 'content' , 'media' , 'status' , 'feature' , 'editor_pick' , 'recommended' , 'newsflash' , 'cmt_allow', 'author' , 'count_share' , 'count_comment' , 'count_vote' , 'count_view' , 'source_link' , 'source_click'];
    protected $fillable = ['code'];

    public function translations()
    {
        return $this->hasMany(\App\Model\Content\Translation\PostTranslation::class);
    }

    public function comments()
    {
    	return $this->hasMany(\App\Model\User\Comment::class);
    }

    public function tags()
    {
    	return $this->belongsToMany(\App\Model\Content\Tag::class);
    }

    public function categories()
    {
    	return $this->belongsToMany(\App\Model\Content\Category::class);
    }

    public function reactions()
    {
        return $this->hasMany(\App\Model\User\Reaction::class);
    }

    public function scopePublish($query)
    {
        return $query->whereHas('translations', function($q){
            $q->where('locale' , \App::getLocale())->where('status' , 'publish');
        });
    }

    public function scopePending($query)
    {
        return $query->where('status' , '<>' , 'off');
    }
}
