<!doctype html>
<html amp lang="en">
    @include('transend_layouts.amp_layouts.head')
    <body>
        @include('transend_layouts.amp_layouts.header')
        @include('transend_layouts.amp_layouts.category_ad')
        <div class="blog-area">
            <div class="container">
                <div class="row">
                    @yield('main_content')
                    @yield('side_section')
                </div>
            </div>
        </div>
        @include('transend_layouts.amp_layouts.footer')
    </body>
</html>