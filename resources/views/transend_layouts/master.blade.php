<!DOCTYPE html>
<html lang="en">
  @include('transend_layouts.home_meta')
  <body>
  @include('transend_layouts.header')
  @include('transend_layouts.category_ad')
  <div class="blog-area section-padding-0-80">
    <div class="container">
      <div class="row">
        @yield('mainContent')
        @yield('side_section')
      </div>
    </div>
  </div>
  @include('transend_layouts.footer')            
    <!-- jQuery-2.2.4 js -->
    <script src="{{ URL::to('frontend/js/jquery/jquery-2.2.4.min.js') }}"></script>
    <!-- Popper js -->
    <script src="{{ URL::to('frontend/js/bootstrap/popper.min.js') }}"></script>
    <!-- Bootstrap js -->
    <script src="{{ URL::to('frontend/js/bootstrap/bootstrap.min.js') }}"></script>
    <!-- All Plugins js -->
    <script src="{{ URL::to('frontend/js/plugins/plugins.js') }}"></script>
    <!-- Active js -->
    <script src="{{ URL::to('frontend/js/active.js') }}"></script>
    <!-- Google Maps -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwuyLRa1uKNtbgx6xAJVmWy-zADgegA2s"></script>
    <script src="{{ URL::to('frontend/js/google-map/map-active.js')}}"></script>

</body>
</html>