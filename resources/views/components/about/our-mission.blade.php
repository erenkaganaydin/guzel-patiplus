<!-- Our Mission Section Start -->
<div id="mission" class="mission section bg-pink">
    <div class="mission-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="mission-img-box">
                        <img src="{{ Voyager::image($mission->image_main) }}" alt="mission" class="mission-lg">
                        <img src="{{ Voyager::image($mission->image_small_1) }}" alt="mission"
                            class="mission-sm-img-1">
                        <img src="{{ Voyager::image($mission->image_small_2) }}" alt="mission"
                            class="mission-sm-img-2">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-us-content">
                        <div class="section-content-box">
                            <span class="section-side-span">{{ $mission->subtitle }}</span>
                            <h2 class="section-side-title">{{ $mission->title }}</h2>
                            <div class="mission-img-box d-lg-none">
                                <img src="{{ Voyager::image($mission->image_main) }}" alt="mission" class="mission-lg">
                            </div>
                            <p class="section-side-text">{{ $mission->description }}</p>
                            <div class="progressbar-box">
                                @foreach (json_decode($mission->progress_bars, true) as $progress)
                                    <div class="single-progressbar mb-4">
                                        <p class="progressbar-title">{{ $progress['title'] }}</p>
                                        <div class="progress">
                                            <div class="progress-bar" role="progressbar"
                                                style="width: {{ $progress['percentage'] }}%"
                                                aria-valuenow="{{ $progress['percentage'] }}" aria-valuemin="0"
                                                aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                            <div class="mission-writter">
                                <div>
                                    <div class="mission-img">
                                        <img src="{{ Voyager::image($mission->writter_image) }}" alt="writter">
                                    </div>
                                </div>
                                <div class="writter-text">
                                    <h4>{{ $mission->writter_name }}</h4>
                                    <p>{{ $mission->writter_role }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Our Mission Section End -->
