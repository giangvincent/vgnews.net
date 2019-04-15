<?php

namespace App\Model\User;

use Illuminate\Database\Eloquent\Model as Eloquent;

class CommentTranslation extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['name' , 'email' , 'phone' , 'content'];
}
