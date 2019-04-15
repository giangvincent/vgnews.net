<?php

namespace App\Model\User;

use Illuminate\Database\Eloquent\Model;

class Reaction extends Model
{
    public function post()
    {
    	return $this->belongsTo(\App\Model\Content\Post::class);
    }
}
