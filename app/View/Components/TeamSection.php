<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;
use App\Models\TeamMember;

class TeamSection extends Component
{
    public $teamMembers;

    public function __construct()
    {
        $this->teamMembers = TeamMember::all();  // Tüm ekip üyelerini alıyoruz
    }

    public function render()
    {
        return view('components.team-section');
    }
}
