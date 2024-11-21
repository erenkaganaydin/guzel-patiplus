<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('features', function (Blueprint $table) {
            $table->id();
            
            // Genel alanlar
            $table->string('main_image')->nullable();        // Ana görsel
            $table->string('dot_image')->nullable();         // Nokta görseli
            $table->string('safe_icon')->nullable();         // Güvenli ikon görseli
            $table->string('safe_title')->nullable();        // Güvenli başlık
            $table->string('safe_text')->nullable();         // Güvenli metin
            $table->string('section_title')->nullable();     // Bölüm başlığı
            $table->string('main_title')->nullable();        // Ana başlık
            $table->text('description')->nullable();         // Açıklama metni
            
            // Alt özellikler için sütunlar
            $table->string('feature_1_icon')->nullable();
            $table->string('feature_1_title')->nullable();
            $table->text('feature_1_text')->nullable();
            
            $table->string('feature_2_icon')->nullable();
            $table->string('feature_2_title')->nullable();
            $table->text('feature_2_text')->nullable();
            
            $table->string('feature_3_icon')->nullable();
            $table->string('feature_3_title')->nullable();
            $table->text('feature_3_text')->nullable();
            
            $table->string('feature_4_icon')->nullable();
            $table->string('feature_4_title')->nullable();
            $table->text('feature_4_text')->nullable();
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('features');
    }
};
