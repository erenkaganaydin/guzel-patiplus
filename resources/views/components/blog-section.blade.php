<!-- Blog Bölümü Başlangıç -->
<div id="home-blog" class="home-blog section-pb bg-lightPink">
    <div class="home-blog-area">
        <div class="container">
            <div class="row">
                <div class="section-side-title-box">
                    <div>
                        <span class="section-side-span mb-5">Özelliklerimiz</span>
                        <h2>Son Blog Yazılarımız</h2>
                    </div>
                    <div>
                        <a href="{{ url('/blog') }}" class="btn btn-orange-outline">Tümünü Gör</a>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($blogs as $blog)
                    <div class="col-md-6 col-lg-4 mb-4">
                        <div class="single-blog">
                            <div class="blog-top">
                                <a href="{{ url('/blog', $blog->slug) }}" class="blog-img-box">
                                    <img src="{{ Voyager::image($blog->image) }}" alt="{{ $blog->title }}">
                                </a>
                                <div class="blog-cat">{{ $blog->category }}</div>
                            </div>
                            <div class="blog-content">
                                <a class="blog-title" href="{{ url('/blog', $blog->slug) }}">{{ $blog->title }}</a>
                                <p class="blog-date">{{ \Carbon\Carbon::parse($blog->published_at)->locale('tr')->translatedFormat('d F Y') }}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<!-- Blog Bölümü Bitiş -->
