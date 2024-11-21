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
        Schema::create('team_members', function (Blueprint $table) {
            $table->id();
            $table->string('name');                // Ekip üyesi adı
            $table->string('designation');         // Görev unvanı
            $table->string('image')->nullable();   // Profil resmi
            $table->string('facebook_link')->nullable(); // Facebook bağlantısı
            $table->string('twitter_link')->nullable();  // Twitter bağlantısı
            $table->string('instagram_link')->nullable(); // Instagram bağlantısı
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('team_members');
    }
};
