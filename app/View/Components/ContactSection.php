<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\ContactInfo; // Modeli buraya dahil et

class ContactSection extends Component
{
    public $contactInfo;

    public function __construct()
    {
        $this->contactInfo = ContactInfo::first();
    }

    public function render(): View|Closure|string
    {
        return view('components.contact-section');
    }
}
