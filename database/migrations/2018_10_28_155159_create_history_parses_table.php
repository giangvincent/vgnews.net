<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHistoryParsesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('history_parses', function (Blueprint $table) {
            $table->increments('id');
            $table->text('url_external');
            $table->mediumText('rules');
            $table->mediumText('result_parse');
            $table->string('time_parse')->default('0');
            $table->string('status');
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
        Schema::dropIfExists('history_parses');
    }
}
