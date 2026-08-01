<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddOptionsToTUrunkartTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('t_urunkart', function (Blueprint $table) {
            $table->json('malzemeler')->nullable();
            $table->json('ekstra_soslar')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('t_urunkart', function (Blueprint $table) {
            $table->dropColumn(['malzemeler', 'ekstra_soslar']);
        });
    }
}
