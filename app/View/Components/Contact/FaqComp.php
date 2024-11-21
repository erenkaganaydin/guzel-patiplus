<?php

namespace App\View\Components\Contact;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\Faq; // Modeli buraya dahil et

class FaqComp extends Component
{
    public $faqs;

    public function __construct()
    {
        $this->faqs = Faq::all();
    }
    
    public function render(): View|Closure|string
    {
        return view('components.contact.faq-comp');
    }
}
