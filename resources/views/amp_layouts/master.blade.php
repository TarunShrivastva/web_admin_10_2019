<!doctype html>
<html amp lang="en">
@include('amp_layouts.head')
<body>
    @include('amp_layouts.header')
    @include('amp_layouts.sidebar')
    @include('amp_layouts.category_ad')
    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area">
        @include('amp_layouts.blogArea')
    </div>
    <!-- ##### Blog Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    @include('amp_layouts.footer')
</body></html>