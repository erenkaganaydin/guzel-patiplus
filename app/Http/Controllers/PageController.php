<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function anasayfa()
    {
        return view('theme.pages.home');
    }

    public function hakkimizda()
    {
        return view('theme.hakkimizda');
    }

    public function cihazlar()
    {
        return view('theme.cihazlar');
    }

    public function hizmetler()
    {
        return view('theme.hizmetler');
    }

    public function blog()
    {
        return view('theme.blog');
    }

    public function iletisim()
    {
        return view('theme.iletisim');
    }
}
