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
        Schema::create('happy_customers', function (Blueprint $table) {
            $table->id();
            $table->string('number');         // Gösterilecek sayı veya metin (örneğin: 5k+)
            $table->string('category');       // Kategori adı (örneğin: Mutlu Müşteri)
            $table->string('addtext');       // Kategori adı (örneğin: Mutlu Müşteri)
            $table->timestamps();
        });
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('happy_customers');
    }
};
