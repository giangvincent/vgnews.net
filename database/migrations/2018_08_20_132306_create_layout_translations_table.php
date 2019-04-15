<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLayoutTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('layout_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('layout_id')->unsigned();
            $table->string('title');
            $table->string('slug');
            $table->text('description')->nullable();
            $table->longText('content');
            $table->string('locale')->index();

            $table->unique(['layout_id','locale']);
            $table->foreign('layout_id')->references('id')->on('layouts')->onDelete('cascade');
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
        Schema::dropIfExists('layout_translations');
    }
}
