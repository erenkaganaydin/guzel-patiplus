<div id="hero" class="hero hero-1">
    <img src="{{ asset('assets/images/hero-1-bg.svg') }}" alt="" class="hero-1-bg">
    <div class="hero-area">
        <div class="container">
            <div class="row align-items-center">
                    <div class="col-xl-6">
                        <div class="hero-content">
                            <h1 class="hero-title">{{ $hero->title }}</h1>
                            <p class="hero-text">{{ $hero->description }}</p>
                            <a href="{{ $hero->button_link }}" class="btn btn-orange">{{ $hero->button_text }}</a>
                            <div class="happy-client-box">
                                <div class="hc-img-box">
                                    <div class="hc-single-img">
                                        <img src="{{ Voyager::image($hero->client_image_1) }}" alt="">
                                    </div>
                                    <div class="hc-single-img">
                                        <img src="{{ Voyager::image($hero->client_image_2) }}" alt="">
                                    </div>
                                    <div class="hc-single-img">
                                        <img src="{{ Voyager::image($hero->client_image_3) }}" alt="">
                                    </div>
                                </div>
                                <div class="hc-text-box">
                                    <h4><span class="counter">{{ $hero->happy_clients }}</span>{{ $hero->happy_clients_text }}</h4>
                                    <p>{{ $hero->happy_clients_text_desc }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="hero-img-box-2">
                            <img src="{{ Voyager::image($hero->client_image_4) }}" alt="" class="hero-img">
                        </div>
                    </div>
                </div>
                
        </div>
    </div>
</div>
