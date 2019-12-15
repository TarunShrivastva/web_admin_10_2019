@extends('transend_layouts.master')
@section('mainContent')
 <div class="col-12 col-lg-8">
    <div class="row">
        <!-- Single Post -->
        @foreach($toptens as $topten)
            @if(isset($topten->compare->id))
            <div class="col-12 col-md-6">
                <div class="single-blog-post style-3">
                    <div class="post-thumb">
                        <a href="#"><img src="{{ URL::to('/')}}/upload/{{ $topten->image }}" alt=""></a>
                    </div>
                    <div class="post-data">
                        <a href="{{ URL::to('/').'/hi/top-products/'.$topten->compare->alias .'-'. $topten->compare->id}}" class="post-catagory">{{ $topten->title }}</a>
                        <a href="{{ URL::to('/').'/hi/top-products/'.$topten->compare->alias .'-'. $topten->compare->id}}" class="post-title">
                            <h6>{{ str_limit(strip_tags($topten->description),50) }}</h6>
                        </a>
                    </div>
                </div>
            </div>
            @endif
        @endforeach
    </div>
    <nav class="bottom-space">
        <ul class="pagination justify-content-end">
            {{$toptens->links('vendor.pagination.bootstrap-4')}}
        </ul>
    </nav>
</div>
@endsection
@section('side_section')
    <div class="col-12 col-lg-4">
                    <div class="blog-sidebar-area">
                        {{-- {!! $recentArticles !!} --}}
                        <!-- Popular News Widget -->
                        <div class="popular-news-widget mb-50">
                            <h3>5 {{ __('hi.Most Popular News') }}</h3>
                             {{-- {!! $trendingArticles !!}                   --}}
                        </div>
                        <!-- Newsletter Widget -->
                        <div class="newsletter-widget mb-50">
                            <h4>{{ __('hi.Newsletter') }}</h4>
                        <p>Please Insert your detailes to subscribe our newsletter.</p>
                        {!! Form::open(['route' => 'news.letters']) !!}
                            {!! Form::text('name', null, array('placeholder' => 'Name', 'required', "oninvalid"=>"this.setCustomValidity('Please Enter Name')","oninput"=>"setCustomValidity('')", "autocomplete" => "off")) !!}
                            {!! Form::text('email', null, array('placeholder'=> 'Email','required',"oninvalid"=>"this.setCustomValidity('Please Enter Email Address')","oninput"=>"setCustomValidity('')","pattern"=>"[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$", "autocomplete" => "off")) !!}
                            @if($errors->any())
                                <p style="color:red">{{ $errors->first() }}</p>
                            @endif
                            {!! Form::button('Subscribe', ['class' => 'btn w-100', 'type' => 'submit']) !!}
                        {!! Form::close() !!}
                        </div>
                    </div>
                </div>
@endsection                


