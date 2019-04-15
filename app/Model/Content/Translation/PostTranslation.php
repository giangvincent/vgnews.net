<?php

namespace App\Model\Content\Translation;

use Illuminate\Database\Eloquent\Model as Eloquent;

class PostTranslation extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['title' , 'slug' , 'description' , 'content' , 'media' , 'status' , 'feature' , 'editor_pick' , 'recommended' , 'newsflash' , 'cmt_allow', 'author' , 'count_share' , 'count_comment' , 'count_vote' , 'count_view' , 'source_link' , 'source_click'];
}
