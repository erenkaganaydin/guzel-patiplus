<!-- İletişim Bölümü Başlangıç -->
<div id="home-contact" class="home-contact section bg-lightPink">
    <div class="home-contact-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5 col-xxl-4 mb-4 mb-lg-5">
                    <div class="home-contact-content">
                        <div class="section-content-box">
                            <h2 class="home-contact-title mobile-hide">Bize Ulaşın</h2>
                            <p class="section-side-text">{{ $contactInfo->description }}</p>
                            <ul class="contact-info-collection">
                                @if($contactInfo->phone)
                                    <li class="mb-4">
                                        <span><i class="fa-solid fa-phone"></i></span> <a href="tel:{{ $contactInfo->phone }}"> {{ $contactInfo->phone }} </a>
                                    </li>
                                @endif
                                @if($contactInfo->email)
                                    <li class="mb-4">
                                        <span><i class="fa-regular fa-envelope"></i></span><a href="mailto:{{ $contactInfo->email }}"> {{ $contactInfo->email }} </a> 
                                    </li>
                                @endif
                                @if($contactInfo->address)
                                    <li>
                                        <span style="min-width: 40px;"><i class="fa-solid fa-location-dot"></i></span><a target="_blank" href="https://maps.app.goo.gl/6d5kCVmw2GNZmqdm7"> {{ $contactInfo->address }} </a>  
                                    </li>
                                @endif
                            </ul>
                        </div>
                        <div class="working-hours-box">
                            <h2 class="working-title">Çalışma Saatleri</h2>
                            <ul class="working-collection">
                                @foreach(json_decode($contactInfo->working_hours, true) as $day => $hours)
                                    <li>
                                        <p class="day-name">{{ $day }}</p>
                                        <p class="line-devider"></p>
                                        <p class="day-hours">{{ $hours }}</p>
                                    </li>
                                @endforeach
                            </ul>

                            <ul class="contact-social">
                                @if($contactInfo->facebook_link)
                                    <li><a href="{{ $contactInfo->facebook_link }}"><i class="fa-brands fa-facebook-f"></i></a></li>
                                @endif
                                @if($contactInfo->instagram_link)
                                    <li><a href="{{ $contactInfo->instagram_link }}"><i class="fa-brands fa-instagram"></i></a></li>
                                @endif
                                @if($contactInfo->twitter_link)
                                    <li><a href="{{ $contactInfo->twitter_link }}"><i class="fa-brands fa-twitter"></i></a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-xxl-8">
                    <form id="home-contact-form" class="home-contact-form">
                        <div class="row">
                            <h2 class="home-contact-title mb-10">Şimdi Hizmet Alın</h2>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <div class="form-group">
                                    <label for="home-contact-name">Adınız Soyadınız</label>
                                    <input type="text" class="form-control" id="home-contact-name" placeholder="Adınızı girin">
                                </div>
                            </div>
                            <div class="col-md-6 mb-4">
                                <div class="form-group">
                                    <label for="home-contact-email">E-posta Adresi</label>
                                    <input type="email" class="form-control" id="home-contact-email" placeholder="ornek@example.com">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <div class="form-group">
                                    <label for="home-contact-phone">Telefon Numarası</label>
                                    <input type="text" class="form-control" id="home-contact-phone" placeholder="+90 123 456 78 90">
                                </div>
                            </div>
                            <div class="col-md-6 mb-4">
                                <div class="form-group">
                                    <label>Hizmet</label>
                                    <select class="form-control">
                                        @foreach(json_decode($contactInfo->services, true) ?? [] as $service)
                                            <option>{{ $service }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 mb-4">
                                <div class="form-group">
                                    <label for="home-contact-message">Mesajınız</label>
                                    <textarea class="form-control" id="home-contact-message" rows="5" placeholder="Mesajınızı buraya yazın"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="mt-4">
                            <button class="btn btn-orange" type="submit">Bize Ulaşın</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- İletişim Bölümü Bitiş -->
