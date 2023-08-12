<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Laravel</title>
        @vite(['resources/js/app.js'])
        @vite(['resources/sass/app.scss'])

        <link rel="icon" type="image/x-icon" href="{{asset('frontend/img/logo/favicon.png')}}">

        <link rel="stylesheet" href="{{asset('frontend/css/bootstrap.min.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/css/all-fontawesome.min.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/css/flaticon.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/css/animate.min.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/css/magnific-popup.min.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/css/owl.carousel.min.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/css/style.css')}}">

        {{-- frontend_service --}}

        <link rel="stylesheet" href="{{asset('frontend_service/css/bootstrap.css')}}">
        <link rel="stylesheet" href="{{asset('frontend_service/css/style.css')}}">
        <link rel="stylesheet" href="{{asset('frontend_service/css/responsive.css')}}">
        <link rel="stylesheet" href="{{asset('frontend_service/css/color.css')}}">
        <link rel="stylesheet" href="{{asset('frontend_service/images/favicon.png')}}">
        <link rel="stylesheet" href="{{asset('frontend_service/images/favicon.png')}}">
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&amp;family=Poppins:wght@400;500;600;700;800&amp;display=swap" rel="stylesheet">

    </head>
    <body>
        <div id="app">
            <router-view></router-view>
        </div>
    </body>


<script src="{{asset('admin/plugins/jquery/jquery.min.js')}}"></script>
{{-- <!-- jQuery UI 1.11.4 --> --}}
<script src="{{asset('admin/plugins/jquery-ui/jquery-ui.min.js')}}"></script>

<script src="{{asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
{{-- <!-- ChartJS --> --}}
<script src="{{asset('admin/plugins/chart.js/Chart.min.js')}}"></script>
{{-- <!-- Sparkline --> --}}
<script src="{{asset('admin/plugins/sparklines/sparkline.js')}}"></script>
{{-- <!-- JQVMap --> --}}
<script src="{{asset('admin/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
<script src="{{asset('admin/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
{{-- <!-- jQuery Knob Chart --> --}}
<script src="{{asset('admin/plugins/jquery-knob/jquery.knob.min.js')}}"></script>
{{-- <!-- daterangepicker --> --}}
<script src="{{asset('admin/plugins/moment/moment.min.js')}}"></script>
<script src="{{asset('admin/plugins/daterangepicker/daterangepicker.js')}}"></script>
{{-- <!-- Tempusdominus Bootstrap 4 --> --}}
<script src="{{asset('admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
{{-- <!-- Summernote --> --}}
<script src="{{asset('admin/plugins/summernote/summernote-bs4.min.js')}}"></script>
{{-- <!-- overlayScrollbars --> --}}
<script src="{{asset('admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
{{-- <!-- AdminLTE App --> --}}
<script src="{{asset('admin/dist/js/adminlte.js')}}"></script>



{{-- -------------Script for Frontend--------- --}}
{{-- <script data-cfasync="false" src="{{asset('frontend/js/email-decode.min.js')}}"></script> --}}
<script src="{{asset('frontend/js/jquery-3.6.0.min.js')}}"></script>
<script src="{{asset('frontend/js/modernizr.min.js')}}"></script>
<script src="{{asset('frontend/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('frontend/js/imagesloaded.pkgd.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('frontend/js/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.appear.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.easing.min.js')}}"></script>
<script src="{{asset('frontend/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('frontend/js/counter-up.js')}}"></script>
<script src="{{asset('frontend/js/wow.min.js')}}"></script>
<script src="{{asset('frontend/js/main.js')}}"></script>

{{-- frontend_service --}}

<script src="{{asset('frontend/js/jquery.js')}}"></script>
<script src="{{asset('frontend/js/popper.min.js')}}"></script>
<script src="{{asset('frontend/js/bootstrap.min.js')}}"></script>
<script src="{{asset('frontend/js/bootstrap-select.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.fancybox.js')}}"></script>
<script src="{{asset('frontend/js/isotope.js')}}"></script>
<script src="{{asset('frontend/js/owl.js')}}"></script>
<script src="{{asset('frontend/js/appear.js')}}"></script>
<script src="{{asset('frontend/js/wow.js')}}"></script>
<script src="{{asset('frontend/js/lazyload.js')}}"></script>
<script src="{{asset('frontend/js/scrollbar.js')}}"></script>
<script src="{{asset('frontend/js/TweenMax.min.js')}}"></script>
<script src="{{asset('frontend/js/swiper.min.js')}}"></script>
<script src="{{asset('frontend/js/jquery.polyglot.language.switcher.js')}}"></script>
<script src="{{asset('frontend/js/jquery.ajaxchimp.min.js')}}"></script>
<script src="{{asset('frontend/js/parallax-scroll.js')}}"></script>

<script src="{{asset('frontend/js/script.js')}}"></script>
</html>

