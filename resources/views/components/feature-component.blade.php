<!-- Özelliklerimiz Bölümü Başlangıç -->
<div id="features" class="features section bg-lightPink">
    <div class="features-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 order-lg-2 d-none d-lg-block">
                    <div class="features-lg-img">
                        <img src="{{ Voyager::image($feature->main_image) }}" alt="hakkımızda" class="features-lg">
                        <img src="{{ Voyager::image($feature->dot_image) }}" alt="features-sm-img" class="features-dot">
                        <div class="safe-box">
                            <div class="safe-icon-box">
                                <img src="{{ Voyager::image($feature->safe_icon) }}" alt="güvenli">
                            </div>
                            <div class="safe-content">
                                <h4>{{ $feature->safe_title }}</h4>
                                <p>{{ $feature->safe_text }}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-us-content">
                        <div class="section-content-box">
                            <span class="section-side-span">{{ $feature->section_title }}</span>
                            <h2 class="section-side-title mobile-hide">{{ $feature->main_title }}</h2>
                            <div class="features-lg-img d-lg-none">
                                <img src="{{ Voyager::image($feature->main_image) }}" alt="hakkımızda" class="features-lg">
                                <img src="{{ Voyager::image($feature->dot_image) }}" alt="features-sm-img" class="features-dot">
                            </div>
                            <p class="section-side-text">{{ $feature->description }}</p>
                            <ul class="section-featurs-list">
                                <!-- Feature 1 -->
                                <li class="single-feature">
                                    <div>
                                        <div class="features-img-box">
                                            <img src="{{ Voyager::image($feature->feature_1_icon) }}" alt="Özellikler">
                                        </div>
                                    </div>
                                    <div class="features-content">
                                        <h3 class="fc-title">{{ $feature->feature_1_title }}</h3>
                                        <p class="fc-text">{{ $feature->feature_1_text }}</p>
                                    </div>
                                </li>
                                <!-- Feature 2 -->
                                <li class="single-feature">
                                    <div>
                                        <div class="features-img-box">
                                            <img src="{{ Voyager::image($feature->feature_2_icon) }}" alt="Özellikler">
                                        </div>
                                    </div>
                                    <div class="features-content">
                                        <h3 class="fc-title">{{ $feature->feature_2_title }}</h3>
                                        <p class="fc-text">{{ $feature->feature_2_text }}</p>
                                    </div>
                                </li>
                                <!-- Feature 3 -->
                                <li class="single-feature">
                                    <div>
                                        <div class="features-img-box">
                                            <img src="{{ Voyager::image($feature->feature_3_icon) }}" alt="Özellikler">
                                        </div>
                                    </div>
                                    <div class="features-content">
                                        <h3 class="fc-title">{{ $feature->feature_3_title }}</h3>
                                        <p class="fc-text">{{ $feature->feature_3_text }}</p>
                                    </div>
                                </li>
                                <!-- Feature 4 -->
                                <li class="single-feature">
                                    <div>
                                        <div class="features-img-box">
                                            <img src="{{ Voyager::image($feature->feature_4_icon) }}" alt="Özellikler">
                                        </div>
                                    </div>
                                    <div class="features-content">
                                        <h3 class="fc-title">{{ $feature->feature_4_title }}</h3>
                                        <p class="fc-text">{{ $feature->feature_4_text }}</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Özelliklerimiz Bölümü Bitiş -->
