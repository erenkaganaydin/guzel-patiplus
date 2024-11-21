<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Blog extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'content', 'category', 'image', 'published_at', 'slug'];

    // Modelin "boot" metodu içinde "creating" olayını kullanıyoruz
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($blog) {
            $blog->slug = Str::slug($blog->title);

            // Aynı slug varsa benzersiz bir slug yapmak için sayı ekleyin
            $originalSlug = $blog->slug;
            $counter = 1;

            while (Blog::where('slug', $blog->slug)->exists()) {
                $blog->slug = $originalSlug . '-' . $counter;
                $counter++;
            }
        });
    }
}
