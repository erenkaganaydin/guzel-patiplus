<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\AboutSection; // Modeli buraya dahil et

class AboutComponent extends Component
{
    public $about;

    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        $about = AboutSection::first();

        // Kayıt varsa `features` alanını diziye çevirip `$this->about` olarak atıyoruz
        $this->about = $about;
        if ($about && $about->features) {
            $this->about->features = json_decode($about->features, true);
        }
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.about-component');
    }
}
