 <!-- Başlık Bölümü Başlangıç -->
    <header id="header" class="header">
        <div class="container">
            <div class="row">
                <nav class="navbar navbar-expand-xl">
                    <div class="container-fluid">
                        <a class="navbar-brand header-logo" href="{{ url('/') }}">
                            <div class="">
                                <img id="header-logo" src="{{ asset('assets/images/icons/logo.svg') }}" alt="logo">
                            </div>
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#headerNavbarDropdown" aria-controls="headerNavbarDropdown"
                            aria-expanded="false" aria-label="Menüyü Aç">
                            <span class="navbar-menu-icon"><i class="fa-solid fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse" id="headerNavbarDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="{{ url('/') }}">Anasayfa</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/hakkimizda') }}">Hakkımızda</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/hizmetler') }}">Hizmetler</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/ekibimiz') }}">Ekibimiz</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/blog') }}">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ url('/iletisim') }}">İletişim</a>
                                </li>
                                {{-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        Sayfalar
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="pricing.html">Fiyatlandırma</a></li>
                                        <li><a class="dropdown-item" href="blog-details.html">Blog Detayları</a></li>
                                        <li><a class="dropdown-item" href="services.html">Hizmetler</a></li>
                                        <li><a class="dropdown-item" href="team.html">Ekibimiz</a></li>
                                        <li><a class="dropdown-item" href="sign-up.html">Kayıt Ol</a></li>
                                        <li><a class="dropdown-item" href="sign-in.html">Giriş Yap</a></li>
                                        <li><a class="dropdown-item" href="faq.html">SSS</a></li>
                                        <li><a class="dropdown-item" href="404.html">Hata Sayfası</a></li>
                                    </ul>
                                </li> --}}
                            </ul>
                        </div>
                        <div class="header-buttons d-none d-xl-flex">
                            <a href="{{ url('/iletisim') }}" class="btn btn-orange">Bize Ulaşın</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- Başlık Bölümü Bitiş -->


    <!-- Sabit Butonlar Başlangıç -->
<div class="fixed-buttons">
    <a style="width: 181px;" href="https://wa.me/+905306611090?text=Merhaba,%20Web%20sitenizden%20ula%C5%9F%C4%B1yorum,%20bilgi%20alabilir%20miyim" class="fixed-btn whatsapp" target="_blank">
        <i class="fa-brands fa-whatsapp"></i> Whatsapp İle Ulaş
    </a>
    <a href="https://www.google.com/maps/dir//Bahariye,+PAT%C4%B0PLUS+VETER%C4%B0NER+KL%C4%B0N%C4%B0%C4%9E%C4%B0,+Atat%C3%BCrk+Blv.+NO:13%2FB,+35600+Kar%C5%9F%C4%B1yaka%2F%C4%B0zmir/@38.4335872,27.19744,17z/data=!4m17!1m7!3m6!1s0x14bbd9e17a60f2f3:0xb1fac04e47ab64ab!2zUEFUxLBQTFVTIFZFVEVSxLBORVIgS0zEsE7EsMSexLA!8m2!3d38.4615749!4d27.1151904!16s%2Fg%2F11jx62wvmv!4m8!1m0!1m5!1m1!1s0x14bbd9e17a60f2f3:0xb1fac04e47ab64ab!2m2!1d27.1151904!2d38.4615749!3e3?entry=ttu&g_ep=EgoyMDI0MTAyOS4wIKXMDSoASAFQAw%3D%3D" class="fixed-btn directions" target="_blank">
        <i class="fa-solid fa-map-marker-alt"></i> Yol Tarifi Al
    </a>
</div>
<!-- Sabit Butonlar Bitiş -->
<div id="paw-container"></div>
