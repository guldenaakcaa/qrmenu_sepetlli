<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToMasasAndSiparisTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('masas', function (Blueprint $table) {
            $table->string('slug')->nullable()->unique()->after('isim');
        });

        Schema::table('masa_siparis', function (Blueprint $table) {
            $table->unsignedBigInteger('masa_id')->nullable()->after('masa_isim');
            $table->string('session_id')->nullable()->after('masa_id');
            $table->tinyInteger('durum')->default(0)->comment('0: Bekliyor, 1: Onaylandı, 2: İptal')->after('fiyat');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('masas', function (Blueprint $table) {
            $table->dropColumn('slug');
        });

        Schema::table('masa_siparis', function (Blueprint $table) {
            $table->dropColumn(['masa_id', 'session_id', 'durum']);
        });
    }
}
