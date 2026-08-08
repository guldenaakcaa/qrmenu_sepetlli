<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSessionTimeoutToTAyarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('t_ayar', function (Blueprint $table) {
            $table->integer('session_timeout_minutes')->default(120);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('t_ayar', function (Blueprint $table) {
            $table->dropColumn('session_timeout_minutes');
        });
    }
}
