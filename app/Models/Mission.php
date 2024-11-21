<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mission extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'subtitle',
        'description',
        'progress_bars',
        'writter_name',
        'writter_role',
        'writter_image',
        'image_main',
        'image_small_1',
        'image_small_2',
    ];

    protected $casts = [
        'progress_bars' => 'array', // JSON alanını dizi olarak alır
    ];
}
