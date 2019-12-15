@extends('transend_layouts.master')
@section('mainContent')
    <div class="col-12 col-lg-8">
        <div class="blog-posts-area">
            <!-- Single Featured Post -->
            <div class="single-blog-post featured-post mb-30">
                @foreach($compArray as $key => $compare)
                <table align="center" class="table-n" style="margin-bottom: 15px">
                    <tr>
                        <td colspan="3" align="center"><h2>{{ $compare['object'][$key]->title }}</h4></td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" class="hidden-xs"><strong>{{ $compare['title'][0] }}</strong><br><img src="{{ URL::to('upload/'. $compare['image'][0]) }}" width="150px"></td>
                        <td>
                            <table class="" cellpadding="0" cellspacing="0" style="font-size: 18px">
                                <tr class="visible-sm">
                                    <td align="center"><strong>{{ $compare['title'][0] }}</strong><br><img src="{{ URL::to('upload/'. $compare['image'][0]) }}" width="30px"></td>
                                    <td></td>
                                    <td align="center"><strong>{{ $compare['title'][1] }}</strong><br><img src="{{ URL::to('upload/'. $compare['image'][1]) }}" width="30px"></td>
                                </tr>
                                @foreach($compare['specifications'] as $key=>$specification)
                                <tr>
                                    <td style="width:80px">{{ isset($compare['specifications'][$key][1])? $compare['specifications'][$key][1] : 'N/A'}}</td>
                                    <td style="width:80px">{{ isset($compare['specifications'][$key][0])? $compare['specifications'][$key][0] : ''}}</td>
                                    <td style="width:80px">{{ isset($compare['specifications'][$key][2])? $compare['specifications'][$key][2] : 'N/A'}}</td>
                                </tr>
                                @endforeach
                                <tr>
                                    <td>
                                        <div><img src="{{ URL::to('frontend/img/logo-1.jpg') }}" height="25px"> <span>6450</span></div>
                                        <div><img src="{{ URL::to('frontend/img/logo-2.jpg') }}" height="25px"> <span>5450</span></div>
                                        <div><img src="{{ URL::to('frontend/img/logo-3.jpg') }}" height="25px"> <span>4450</span></div>
                                        <div><img src="{{ URL::to('frontend/img/logo-4.jpg') }}" height="25px"> <span>3450</span></div>
                                    </td>
                                    <td align="center">Price</td>
                                    <td>
                                        <div><img src="{{ URL::to('frontend/img/logo-1.jpg') }}" height="25px"> <span>6450</span></div>
                                        <div><img src="{{ URL::to('frontend/img/logo-2.jpg') }}" height="25px"> <span>5450</span></div>
                                        <div><img src="{{ URL::to('frontend/img/logo-3.jpg') }}" height="25px"> <span>4450</span></div>
                                        <div><img src="{{ URL::to('frontend/img/logo-4.jpg') }}" height="25px"> <span>3450</span></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td align="center" valign="top" class="hidden-xs"><strong>{{ $compare['title'][1] }}</strong><br><img src="{{ URL::to('upload/'. $compare['image'][1]) }}" width="150px"></td>
                    </tr>
                </table>
                @endforeach
            </div>
        </div>
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