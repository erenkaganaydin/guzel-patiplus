<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\Blog; 

class BlogSection extends Component
{
    public $blogs;

    public function __construct()
    {
        $this->blogs = Blog::orderBy('published_at', 'desc')->take(3)->get();  // En son 3 blog yazısını çekiyoruz
    }

    public function render(): View|Closure|string
    {
        return view('components.blog-section');
    }
}
