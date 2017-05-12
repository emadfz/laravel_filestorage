<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Files extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
           Schema::create('files', function (Blueprint $table) {
            $table->increments('id');
            $table->string('cloud_name');
            $table->string('title');
            $table->string('parent_id')->nullable();
            $table->timestamps();        
        });        }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
         Schema::dropIfExists('files');
        //
    }
}
