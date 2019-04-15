<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdatePost extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('post_translations', function($table) {
            $table->string('source_link')->nullable()->after('media');
            $table->integer('source_click')->nullable()->after('source_link');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('category_translations', function($table) {
            $table->dropColumn('source_link');
            $table->dropColumn('source_click');
        });
    }
}
