<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\HeroSection; // Modeli buraya dahil et

class HeroComponent extends Component
{
    public $hero;

    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        $this->hero = HeroSection::first();
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.hero-component');
    }
}
