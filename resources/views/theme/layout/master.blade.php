<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <!-- CSS ve JavaScript Dosyalarını Ekle -->
    <!-- Diğer CSS dosyalarını da ekle -->
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.png">
    <!-- Syne Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="{{ asset('assets/css/css2.css') }}?family=Syne:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <!-- Inter Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="{{ asset('assets/css/css2-1.css') }}?family=Inter:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('assets/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/fontawesome.min.css') }}">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <!-- Slick Slider -->
    <link rel="stylesheet" href="{{ asset('assets/css/slick-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/slick.css') }}">
    <!-- Stil CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}?v=1">
</head>

<body>
    @include('theme.layout.header')

    <main>
        @yield('content')
    </main>

    @include('theme.layout.footer')
    <!-- JavaScript Dosyalarını Ekle -->
    <!-- jQuery -->
    <script src="{{ asset('assets/js/jquery-3.6.4.min.js') }}"></script>
    <!-- Waypoint -->
    <script src="{{ asset('assets/js/jquery.waypoints.min.js') }}"></script>
    <!-- Bootstrap -->
    <script src="{{ asset('assets/js/popper.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <!-- Counter Up -->
    <script src="{{ asset('assets/js/jquery.counterup.min.js') }}"></script>
    <!-- Slick Slider -->
    <script src="{{ asset('assets/js/slick.min.js') }}"></script>
    <!-- Font Awesome -->
    <script src="{{ asset('assets/js/all.min.js') }}"></script>
    <script src="{{ asset('assets/js/fontawesome.min.js') }}"></script>
    <!-- Main Script -->
    <script src="{{ asset('assets/js/main.js') }}"></script>

</body>

</html>
