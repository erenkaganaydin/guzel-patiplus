<?php

namespace App\View\Components\About;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\Mission; 

class OurMission extends Component
{
    public $mission;

    public function __construct()
    {
        $this->mission = Mission::first(); // İlk kaydı getiriyoruz
    }

    public function render(): View|Closure|string
    {
        return view('components.about.our-mission');
    }
}
