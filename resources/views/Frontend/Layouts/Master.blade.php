<!DOCTYPE html>
<html lang="{{ \App::getLocale() }}">
<head>
  <base href="{{asset('')}}">
  @include('Frontend.Layouts.Meta')
  <!-- Google Fonts -->
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700' rel='stylesheet'>
  @include('Frontend.Vendor.ImportFile.Css')
  @include('Frontend.Vendor.ImportFile.Favicon')
  <!-- Lazyload (must be placed in head in order to work) -->
  <script src="js/lazysizes.min.js"></script>
</head>
<body class="bg-light style-default style-rounded">
  @include('Frontend.Layouts.Preload')<!-- Bg Overlay -->
  <div class="content-overlay"></div><!-- Bg Overlay -->
  
  @include('Frontend.Layouts.Sidenav')
  <main class="main oh" id="main">
    @include('Frontend.Layouts.Topbar')
    @include('Frontend.Layouts.Navbar')
    @yield('Main_content')
    @include('Frontend.Layouts.Footer')
    <div id="back-to-top">
      <a href="#top" aria-label="Go to top"><i class="ui-arrow-up"></i></a>
    </div>
  </main> <!-- end main-wrapper -->
  @include('Frontend.Vendor.ImportFile.Script')
  @yield('script')
</body>
</html>