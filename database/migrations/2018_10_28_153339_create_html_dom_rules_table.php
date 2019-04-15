<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHtmlDomRulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('html_dom_rules', function (Blueprint $table) {
            $table->increments('id');
            $table->text('url_external');
            $table->text('dom_parse_rule');
            $table->text('replace_rule');
            $table->integer('num_success_parse');
            $table->integer('num_fail_parse');
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
        Schema::dropIfExists('html_dom_rules');
    }
}
