<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ModificationOnPostTranslation extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('post_translations', function($table) {
            /* $table->string('source_link')->nullable()->after('media');
            $table->integer('source_click')->nullable()->after('source_link'); */
                    
            //$table->integer('count_view')->after('media');
            $table->integer('count_share')->after('media');
            $table->integer('author')->unsigned()->after('media');
            $table->boolean('cmt_allow')->default('0')->after('media');
            $table->boolean('newsflash')->default('0')->after('media');
            $table->boolean('recommended')->default('0')->after('media');
            $table->boolean('editor_pick')->default('0')->after('media');
            $table->boolean('feature')->default('0')->after('media');
            $table->string('status')->default('pending')->after('media');
        });
        Schema::table('posts', function($table) {
            $table->dropColumn('comment_allow');
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
            $table->dropColumn('count_share');
            $table->dropColumn('author');
            $table->dropColumn('cmt_allow');
            $table->dropColumn('newsflash');
            $table->dropColumn('recommended');
            $table->dropColumn('editor_pick');
            $table->dropColumn('feature');
            $table->dropColumn('status');
        });
        Schema::table('posts', function($table) {
            $table->boolean('comment_allow')->after('code');
        });
    }
}
