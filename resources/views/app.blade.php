<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="icon" type="image/png" href="assets/images/meta/meta-logo.png" />
    @vite(['resources/css/app.css', 'resources/js/app.js'])


    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,500,700,900" rel="stylesheet">

    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/font-awesome.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/templatemo-softy-pinko.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/flex-slider.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/custom.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/icon/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css') }}" rel="stylesheet">

    @routes
    @inertiaHead
</head>

<body>
    @inertia
    {{-- Boostrap 5  --}}
    <script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}"></script>

    <link href="{{ asset('assets/js/bootstrap.min.js') }}" rel="stylesheet">
    <link href="{{ asset('assets/js/jquery-2.1.0.min.js') }}" rel="stylesheet">
    <link href="{{ asset('assets/js/popper.js') }}" rel="stylesheet">
    <link href="{{ asset('assets/js/scrollreveal.min.js') }}" rel="stylesheet">
    <link href="{{ asset('assets/js/waypoints.min.js') }}" rel="stylesheet">
    <link href="{{ asset('assets/js/jquery.counterup.min.js') }}" rel="stylesheet">
    <link href="{{ asset('assets/js/imgfix.min.js') }}" rel="stylesheet">
    <link href="{{ asset('assets/js/custom.js') }}" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>

</html>
