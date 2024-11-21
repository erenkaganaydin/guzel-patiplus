<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class AboutSection extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'title',
        'description',
        'button_text',
        'button_link',
        'large_image',
        'dot_image',
        'small_image',
        'features'
    ];

    
}
