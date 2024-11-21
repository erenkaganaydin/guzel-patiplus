<?php

namespace App\Http\Controllers;
use App\Models\Service;
use App\Models\TeamMember;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function anasayfa()
    {
        return view('theme.pages.home');
    }

    public function hakkimizda()
    {
        return view('theme.pages.about');
    }

    public function cihazlar()
    {
        return view('theme.cihazlar');
    }

    public function hizmetler()
    {
        $services = Service::orderBy('created_at', 'desc')->paginate(6); // Sayfalama için 6 blog gösteriliyor
        return view('theme.pages.services', compact('services'));
    }

    public function ekibimiz()
    {
        $ekibimiz = TeamMember::orderBy('created_at', 'desc')->paginate(6); // Sayfalama için 6 blog gösteriliyor
        return view('theme.pages.ekibimiz', compact('ekibimiz'));
    }

    public function iletisim()
    {
        return view('theme.pages.contact');
    }
}
