@extends('theme.layout.master')

@section('content')
<!-- Page Title Section Start -->
<div id="page-banner" class="page-banner section">
    <div class="page-title-area">
        <img src="{{ asset('assets/images/banner-bg.svg') }}" alt="banner" class="banner-bg">
        <div class="page-title-box">
            <h2 class="page-title">Bloklar</h2>
            <nav style="--bs-breadcrumb-divider: '-';" aria-label="breadcrumb">
                <ol class="breadcrumb page-breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Anasayfa</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Bloklar</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<!-- Page Title Section End -->

<!-- Blog Section Start -->
<div id="blog" class="blog section">
    <div class="blog-area">
        <div class="container">
            <div class="row">
                <div class="section-title-box">
                    <p class="section-sm-title"><span><img src="{{ asset('assets/images/icons/cat-foot.svg') }}" alt=""></span>Bloklarımız</p>
                    <h2 class="section-title">En son Bloglarımız</h2>
                </div>
            </div>
            <div class="row">
                @foreach($blogs as $blog)
                    <div class="col-xxl-4 col-md-6 mb-4">
                        <div class="single-blog single-blog-2">
                            <div class="blog-top">
                                <a href="{{ route('blog.show', $blog->slug) }}" class="blog-img-box">
                                    <img src="{{ Voyager::image($blog->image) }}" alt="{{ $blog->title }}">
                                </a>
                                <div class="blog-cat">{{ $blog->category }}</div>
                            </div>
                            <div class="blog-content">
                                <a class="blog-title" href="{{ route('blog.show', $blog->slug) }}">{{ $blog->title }}</a>
                                <p class="blog-text">{{ Str::limit(strip_tags($blog->content), 100, '...') }}</p>
                                <hr>
                                <div class="bottom-content">
                                    <p class="blog-date">{{ \Carbon\Carbon::parse($blog->published_at)->locale('tr')->translatedFormat('d F Y') }}</p>
                                    <a href="{{ route('blog.show', $blog->slug) }}" class="blog-btn">Devamını Oku <span><i class="fa-solid fa-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <!-- Pagination Start -->
            <div class="pagination-box mt-3 mt-md-5">
                {{ $blogs->links() }}
            </div>
            <!-- Pagination End -->
        </div>
    </div>
</div>
<!-- Blog Section End -->

<x-subscribe-section />

@endsection
