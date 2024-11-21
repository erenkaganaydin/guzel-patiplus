<div id="about-us" class="about-us section bg-lightPink">
    <div class="about-us-area">
        <div class="container">
            <div class="row">
                <div class="d-none d-lg-block col-lg-6">
                    <div class="about-us-img-box">
                        <img style="border-radius: 10%;" src="{{ Voyager::image($about->large_image) }}" alt="hakkımızda" class="aui-lg">
                        <img style="filter: hue-rotate(174deg);" src="{{ Voyager::image($about->dot_image) }}" alt="hakkımızda" class="aui-dot">
                        <img src="{{ Voyager::image($about->small_image) }}" alt="hakkımızda" class="aui-cat">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-us-content">
                        <div class="section-content-box">
                            <span class="section-side-span">Hakkımızda</span>
                            <h2 class="section-side-title mobile-hide">{{ $about->title }}</h2>
                            <p class="section-side-text">{{ $about->description }}</p>
                            <ul class="section-side-list column-2">
                                @foreach($about->features as $feature)
                                    <li class="mb-4">
                                        <span><img src="{{ asset('assets/images/icons/tick.svg') }}" alt=""></span> {{ $feature }}
                                    </li>
                                @endforeach
                            </ul>
                            <a href="{{ $about->button_link }}" class="btn btn-orange">{{ $about->button_text }}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
