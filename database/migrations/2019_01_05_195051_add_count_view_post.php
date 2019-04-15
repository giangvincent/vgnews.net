<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCountViewPost extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('posts', function($table) {
            $table->dropColumn('comment_count');
        });

        Schema::table('post_translations', function($table) {
            $table->integer('count_view')->after('count_comment');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('post_translations', function($table) {
            $table->dropColumn('count_view');
        });
    }
}
