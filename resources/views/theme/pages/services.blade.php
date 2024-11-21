
@extends('theme.layout.master')

@section('title', 'Pati Plus Veteriner Kliniği | Anasayfa')

@section('content')

<div id="page-banner" class="page-banner section">
    <div class="page-title-area">
        <img src="{{ asset('assets/images/banner-bg.svg') }}" alt="banner" class="banner-bg">
        <div class="page-title-box">
            <h2 class="page-title">Hizmetlerimiz</h2>
            <nav style="--bs-breadcrumb-divider: '-';" aria-label="breadcrumb">
                <ol class="breadcrumb page-breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Anasayfa</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Hizmetlerimiz</li>
                </ol>
            </nav>
        </div>
    </div>
</div>

<div id="services-2" class="services-2 section bg-pink">
    <div class="services-2-area">
        <div class="container">
            <div class="row">
                <div class="section-title-box">
                    <p class="section-sm-title">
                        <span><img src="{{ asset('assets/images/icons/cat-foot.svg') }}" alt=""></span>Hizmetlerimiz
                    </p>
                    <h2 class="section-title">Sunduğumuz Hizmetler</h2>
                </div>
            </div>
            <div class="row">
                @foreach($services as $service)
                    <div class="col-xxl-4 col-md-6 mb-4">
                        <div class="single-service">
                            <div class="single-service-img">
                                <img src="{{ Voyager::image($service->image) }}" alt="{{ $service->title }}">
                            </div>
                            <h2 class="single-service-title">{{ $service->title }}</h2>
                            <p class="single-service-text">{{ $service->description }}</p>
                            <a href="{{ $service->button_link }}" class="btn-details">
                                {{ $service->button_text }} <span><i class="fa-solid fa-arrow-right"></i></span>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

<x-happy-customer-section />

<x-about.our-mission />

<x-team-section />

<x-testimonial-section />
<br>
<x-subscribe-section />


@endsection
