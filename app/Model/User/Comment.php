<?php

namespace App\Model\User;

use Illuminate\Database\Eloquent\Model as Eloquent;

class Comment extends Eloquent
{
    use Translatable;
    public $translationModel = 'App\Model\User\CommentTranslation';
    public $translatedAttributes = ['name' , 'email' , 'phone' , 'content'];
    protected $fillable = ['code'];

    public function post()
    {
    	return $this->belongsTo(\App\Model\Content\Post::class);
    }
}
