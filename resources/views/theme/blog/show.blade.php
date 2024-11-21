@extends('theme.layout.master')

@section('content')
<!-- Page Title Section Start -->
<div id="page-banner" class="page-banner section">
    <div class="page-title-area">
        <img src="{{ asset('assets/images/banner-bg.svg') }}" alt="banner" class="banner-bg">
        <div class="page-title-box">
            <h2 class="page-title text-center">{{ $blog->title }}</h2>
            <nav style="--bs-breadcrumb-divider: '-';" aria-label="breadcrumb">
                <ol class="breadcrumb page-breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Anasayfa</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $blog->title }}</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<!-- Page Title Section End -->

<!-- Blog Details Section Start -->
<div id="blog-details" class="blog-details section">
    <div class="blog-details-area">
        <div class="container">
            <div class="row">
                <div class="blog-details-top">
                    <p class="bd-tag">{{ $blog->category }}</p>
                    <h2 class="bd-title">{{ $blog->title }}</h2>
                    <div class="bd-post-desc">
                        <div class="bd-writter">
                            <img src="{{ asset('assets/images/writter.png') }}" alt="writter">
                            <h4 class="bd-writter-name">Pati Plus</h4> 
                        </div>
                        <div class="bd-pst">
                            <p><i class="fa-regular fa-calendar"></i></p>
                            <p>{{ \Carbon\Carbon::parse($blog->published_at)->locale('tr')->translatedFormat('d F Y') }}</p>
                        </div>
                        <div class="bd-pst">
                            <p><i class="fa-regular fa-clock"></i></p>
                            <p>{{ \Carbon\Carbon::parse($blog->created_at)->locale('tr')->translatedFormat('h:i A') }}</p>
                        </div>
                        
                    </div>
                    <div class="bd-lg-img">
                        <img src="{{ Voyager::image($blog->image) }}" alt="blog">
                    </div>
                </div>
                <div class="blog-details-content">
                    <div class="mb-4">
                        <h3 class="bd-content-title">{{ $blog->title }}</h3>
                        <p class="bd-content-text">{!! $blog->content !!}</p>
                    </div>
                </div>
                <div class="bolg-details-bottom">
                    <div class="bd-tags-box">
                        <p>Kategori:</p>
                        <ul>
                            <li>{{ $blog->category }}</li> <!-- Etiketler varsa dinamik yapılabilir -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Blog Details Section End -->

<x-subscribe-section />

@endsection
