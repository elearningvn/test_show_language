<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('slug',255);
            $table->string('name',255);            
            $table->tinyInteger('status');
            $table->string('title',255);
            $table->text('description');
            $table->string('name_vi',255)->nullable();
            $table->string('name_en',255)->nullable();
            $table->string('name_cn',255)->nullable();
            $table->string('name_fr',255)->nullable();
            $table->text('icon_web');
            $table->text('icon');
            $table->string('brand_ids',255);
            $table->string('banner',255);
            $table->text('language');
            $table->timestamps();
        });

        // Schema::create('category_product', function (Blueprint $table) {
        //     $table->bigIncrements('id');
        //     $table->bigInteger('category_id')->unsigned(); 
        //     $table->bigInteger('product_id')->unsigned();             
        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
};
