<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\Testimonial;

class TestimonialSection extends Component
{
    public $testimonials;

    public function __construct()
    {
        $this->testimonials = Testimonial::all();  
    }

    public function render(): View|Closure|string
    {
        return view('components.testimonial-section');
    }
}
