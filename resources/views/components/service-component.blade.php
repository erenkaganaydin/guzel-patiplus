<!-- Hizmetlerimiz Bölümü Başlangıç -->
<div id="services" class="services section bg-pink">
    <div class="services-area">
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
                    <div class="col-xxl-3 col-lg-4 col-md-6 col-sm-12 mb-4">
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
<!-- Hizmetlerimiz Bölümü Bitiş -->
