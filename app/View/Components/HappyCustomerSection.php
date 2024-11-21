<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\HappyCustomer;

class HappyCustomerSection extends Component
{
    public $customers;

    public function __construct()
    {
        $this->customers = HappyCustomer::all();  // Tüm verileri alıyoruz
    }

    public function render()
    {
        return view('components.happy-customer-section');
    }
}
