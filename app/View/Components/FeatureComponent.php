<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\Feature;

class FeatureComponent extends Component
{
    public $feature;

    public function __construct()
    {
        $this->feature = Feature::first();  // İlk özelliği alıyoruz
    }
    
    public function render(): View|Closure|string
    {
        return view('components.feature-component');
    }
}
