<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('about_sections', function (Blueprint $table) {
            $table->id();
            $table->string('title_content');                 // Başlık
            $table->string('title');                 // Başlık
            $table->text('description');             // Açıklama
            $table->string('button_text');           // Buton Metni
            $table->string('button_link');           // Buton Linki
            $table->string('large_image');           // Büyük Resim
            $table->string('dot_image');             // Nokta Resmi
            $table->string('small_image');           // Küçük Resim
            $table->json('features');                // Özellikler listesi (JSON formatında)
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('about_sections');
    }
};
