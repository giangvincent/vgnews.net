<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNavigationTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('navigation_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('navigation_id')->unsigned();
            $table->string('name_display');
            $table->string('url');
            $table->text('description')->nullable();
            $table->string('page_title');
            $table->string('page_keyword');
            $table->string('page_description');
            $table->string('locale')->index();

            $table->unique(['navigation_id','locale']);
            $table->foreign('navigation_id')->references('id')->on('navigations')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('navigation_translations');
    }
}
