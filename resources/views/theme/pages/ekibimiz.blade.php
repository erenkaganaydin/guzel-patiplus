
@extends('theme.layout.master')

@section('title', 'Pati Plus Veteriner Kliniği | Anasayfa')

@section('content')

<div id="page-banner" class="page-banner section">
    <div class="page-title-area">
        <img src="{{ asset('assets/images/banner-bg.svg') }}" alt="banner" class="banner-bg">
        <div class="page-title-box">
            <h2 class="page-title">Ekibimiz</h2>
            <nav style="--bs-breadcrumb-divider: '-';" aria-label="breadcrumb">
                <ol class="breadcrumb page-breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Anasayfa</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Ekibimiz</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<x-team-section />
<x-testimonial-section />
<x-contact-section />
<x-blog-section />
<x-subscribe-section />


@endsection
