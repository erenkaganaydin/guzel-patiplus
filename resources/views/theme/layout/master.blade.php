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
    <!-- CSS -->
    <style>
        .fixed-buttons {
            position: fixed;
            bottom: 20px;
            left: 20px;
            display: flex;
            flex-direction: column;
            gap: 10px;
            z-index: 1000;
            /* Üstte görünmesi için */
        }

        .fixed-btn {
            display: flex;
            align-items: center;
            padding: 10px 15px;
            font-size: 14px;
            border-radius: 5px;
            color: #fff;
            text-decoration: none;
            transition: background 0.3s ease;
            justify-content: space-evenly;
        }

        .fixed-btn i {
            margin-right: 8px;
        }

        .whatsapp {
            background-color: #96c7e3;
        }

        .directions {
            background-color: #007BFF;
        }

        .fixed-btn:hover {
            opacity: 0.8;
        }
    </style>


    <style>
        /* Pati Konteyneri */
        #paw-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            /* Tüm konteynerin tıklama almamasını sağlar */
            z-index: 10000;
        }

        /* Animasyon */
        @keyframes paw-animation {
            0% {
                opacity: 1;
                transform: scale(1);
            }

            100% {
                opacity: 0;
                transform: scale(1.5);
            }
        }
    </style>

    <script>
        // Pati SVG'sini bir sabit olarak tanımlıyoruz
        const pawSVG = `
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="50" height="50" style="pointer-events: none;">
        <path d="M226.5 92.9c14.3 42.9-.3 86.2-32.6 96.8s-70.1-15.6-84.4-58.5s.3-86.2 32.6-96.8s70.1 15.6 84.4 58.5zM100.4 198.6c18.9 32.4 14.3 70.1-10.2 84.1s-59.7-.9-78.5-33.3S-2.7 179.3 21.8 165.3s59.7 .9 78.5 33.3zM69.2 401.2C121.6 259.9 214.7 224 256 224s134.4 35.9 186.8 177.2c3.6 9.7 5.2 20.1 5.2 30.5l0 1.6c0 25.8-20.9 46.7-46.7 46.7c-11.5 0-22.9-1.4-34-4.2l-88-22c-15.3-3.8-31.3-3.8-46.6 0l-88 22c-11.1 2.8-22.5 4.2-34 4.2C84.9 480 64 459.1 64 433.3l0-1.6c0-10.4 1.6-20.8 5.2-30.5zM421.8 282.7c-24.5-14-29.1-51.7-10.2-84.1s54-47.3 78.5-33.3s29.1 51.7 10.2 84.1s-54 47.3-78.5 33.3zM310.1 189.7c-32.3-10.6-46.9-53.9-32.6-96.8s52.1-69.1 84.4-58.5s46.9 53.9 32.6 96.8s-52.1 69.1-84.4 58.5z"/>
    </svg>
`;

        document.addEventListener('click', function(event) {
            // Pati oluşturma
            const pawContainer = document.getElementById('paw-container');
            const pawElement = document.createElement('div');
            pawElement.classList.add('paw-print');
            pawElement.innerHTML = pawSVG;

            // Tıklama pozisyonunu ayarla
            const x = event.clientX - 25;
            const y = event.clientY - 25;
            pawElement.style.position = 'absolute';
            pawElement.style.left = `${x}px`;
            pawElement.style.top = `${y}px`;

            // Rastgele renk üretme fonksiyonu
            function getRandomColor() {
                const letters = '0123456789ABCDEF';
                let color = '#';
                for (let i = 0; i < 6; i++) {
                    color += letters[Math.floor(Math.random() * 16)];
                }
                return color;
            }
            const randomColor = getRandomColor();
            pawElement.style.color = randomColor;

            // Animasyon ve stil ekleme
            pawElement.style.animation = 'paw-animation 0.8s ease-out forwards';
            pawElement.querySelector('svg').style.fill = 'currentColor';

            // Patiyi ekle ve animasyon sonunda kaldır
            pawContainer.appendChild(pawElement);
            pawElement.addEventListener('animationend', () => {
                pawElement.remove();
            });
        });
    </script>



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
