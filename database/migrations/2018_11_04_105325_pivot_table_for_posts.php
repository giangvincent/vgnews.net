<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PivotTableForPosts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('post_tag', function (Blueprint $table) {
            $table->integer('post_id');
            $table->integer('tag_id');
        });
        Schema::create('category_post', function (Blueprint $table) {
            $table->integer('category_id');
            $table->integer('post_id');
        });
        Schema::create('media_post', function (Blueprint $table) {
            $table->integer('media_id');
            $table->integer('post_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('post_tag');
        Schema::dropIfExists('category_post');
        Schema::dropIfExists('media_post');

    }
}
