@extends('transend_layouts.master')
@section('mainContent')
	<!-- ##### Featured Post Area Start ##### -->
        {!! $homeRecentSection !!}
    <!-- ##### Featured Post Area End ##### -->

    <!-- ##### Popular News Area Start ##### -->
        {!! $homeLatestSection !!}
    <!-- ##### Popular News Area End ##### -->

    <!-- ##### Editorial Post Area Start ##### -->
        {!! $homePopularSection !!}    
    <!-- ##### Editorial Post Area End ##### -->

    <!-- ##### Footer Add Area Start ##### -->
    <div class="footer-add-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-add">
                        <a href="#"><img src="img/bg-img/footer-add.gif" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Footer Add Area End ##### -->
@endsection

