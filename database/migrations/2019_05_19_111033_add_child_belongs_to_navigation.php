<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddChildBelongsToNavigation extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // TODO : add child belongs to navigation menu
        Schema::table('navigations', function($table) {
            $table->renameColumn('is_parent', 'is_root');
            $table->integer('parent');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('navigations', function($table) {
            $table->renameColumn('is_root', 'is_parent');
            $table->dropColumn('parent');
        });
    }
}
