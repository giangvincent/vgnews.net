<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CountReactOnPost extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('post_translations', function($table) {
            $table->integer('count_vote')->after('media');
            $table->integer('count_comment')->after('count_vote');
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
            $table->dropColumn('count_vote');
            $table->dropColumn('count_comment');
        });
    }
}
