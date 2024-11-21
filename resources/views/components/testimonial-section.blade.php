<!-- Müşteri Yorumları Bölümü Başlangıç -->
<div id="testimonial" class="testimonial section bg-pink">
    <div class="testimonial-area">
        <div class="container">
            <div class="row">
                <div class="section-side-title-box">
                    <h2>Müşteri Yorumları</h2>
                    <div>
                        <ul class="slider-btn-box">
                            <li id="testimonial-prev-1" class="prev"><i class="fa-solid fa-chevron-left"></i></li>
                            <li id="testimonial-next-1" class="next"><i class="fa-solid fa-chevron-right"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="testimonial-1-slider" class="testimonial-1-slider">
                @foreach ($testimonials as $testimonial)
                    <div class="single-testimonial">
                        <div class="row">
                            @if ($testimonial->author_image)
                                <div class="col-md-8">
                                @else
                                    <div class="col-md-12">
                            @endif
                            <div class="testionial-content">
                                <div class="testiomonial-top">
                                    @if ($testimonial->author_image)
                                        <div class="testimonial-img-box d-md-none">
                                            <img src="{{ Voyager::image($testimonial->author_image) }}"
                                                alt="testimonial">
                                        </div>
                                    @endif
                                    <ul class="testimonial-rating-collection">
                                        @for ($i = 0; $i < $testimonial->rating; $i++)
                                            <li><i class="fa-solid fa-star"></i></li>
                                        @endfor
                                    </ul>
                                    <h3 class="testimonial-title">"{{ $testimonial->title }}"</h3>
                                    <p class="testimonial-msg">{{ $testimonial->message }}</p>
                                </div>
                                <div class="testiomonial-bottom">
                                    <div class="testimonial-author">
                                        <h3 class="testimonial-author-name">{{ $testimonial->author_name }}</h3>
                                        @if ($testimonial->author_designation)
                                            <p class="testimonial-author-designation">
                                                {{ $testimonial->author_designation }}
                                            </p>
                                        @endif
                                    </div>
                                    <div class="testimonial-quote-img">
                                        <img src="{{ asset('assets/images/icons/quote.svg') }}" alt="quote">
                                    </div>
                                </div>
                            </div>
                        </div>
                        @if ($testimonial->author_image)
                            <div class="col-md-4 d-none d-md-block">
                                <div class="testimonial-img-box">
                                    <img src="{{ Voyager::image($testimonial->author_image) }}" alt="testimonial">
                                </div>
                            </div>
                        @endif
                    </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
</div>
<!-- Müşteri Yorumları Bölümü Bitiş -->
