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
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('title');           // Hizmet başlığı
            $table->text('description');       // Hizmet açıklaması
            $table->string('image')->nullable();  // Görsel
            $table->string('button_text')->nullable(); // Buton metni
            $table->string('button_link')->nullable(); // Buton bağlantısı
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('services');
    }
};
