<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateViewerLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('viewer_logs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ip_adr', 50)->nullable();
            $table->integer('user_id')->unsigned()->nullable();
            $table->integer('post_id')->unsigned()->nullable();
            $table->integer('cat_id')->unsigned()->nullable();
            $table->text('url')->nullable();
            $table->string('session_time', 40)->default('0');
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
        Schema::dropIfExists('viewer_logs');
    }
}
