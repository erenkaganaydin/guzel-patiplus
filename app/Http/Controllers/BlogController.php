<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    // Tüm blogları listeleyen yöntem
    public function index()
    {
        $blogs = Blog::orderBy('published_at', 'desc')->paginate(6); // Sayfalama için 6 blog gösteriliyor
        return view('theme.pages.blog', compact('blogs'));
    }

    // Belirli bir blogu detaylı gösteren yöntem
    public function show($slug)
    {
        $blog = Blog::where('slug', $slug)->firstOrFail();
        return view('theme.blog.show', compact('blog'));
    }
}
