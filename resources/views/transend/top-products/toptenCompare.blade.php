@extends('transend_layouts.master')
@section('mainContent')
 <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">
                        <div class="single-blog-post featured-post single-post">
                            <h2 align="center">Topten Products</h2>
                            @foreach($toptens as $topten)
                            <table align="center" class="table-n" style="margin-bottom: 15px">
                                <tr>
                                    <td colspan="3" align="center">
                                        <h4>{{ $topten->title }}</h4>
                                    </td>
                                </tr>
                                <tr>
                                    {{-- <td align="center" valign="top" class="hidden-xs"><strong></strong><br><img src="" width="150px"></td>
                                    <td> --}}
                                        <table class="" cellpadding="0" cellspacing="0" style="font-size: 18px">
                                            <tr class="visible-sm">
                                                <td align="center"><strong>{{ $topten->title }}</strong><br><img src="{{ URL::to('upload/'.$topten->image) }}" width="30px"></td>
                                                <td></td>
                                                <td align="center"><strong>{{ $topten->title }}</strong><br><img src="{{ URL::to('upload/'.$topten->image) }}" width="30px"></td>
                                            </tr>
                                            <tr>
                                                <td style="width:80px">6.26-inch, 720x1520 pixels</td>
                                                <td style="width:80px">Display</td>
                                                <td style="width:80px">6.1-inch, 1560 x 720 pixels</td>
                                            </tr>
                                            <tr>
                                                <td>Qualcomm</td>
                                                <td>Processor</td>
                                                <td>Qualcomm Snapdragon</td>
                                            </tr>
                                            <tr>
                                                <td>3GB</td>
                                                <td>RAM</td>
                                                <td>3GB</td>
                                            </tr>
                                            <tr>
                                                <td>32GB</td>
                                                <td>Storage</td>
                                                <td>32GB</td>
                                            </tr>
                                            <tr>
                                                <td>4000mAh</td>
                                                <td>Battery Capacity</td>
                                                <td>4000mAh</td>
                                            </tr>
                                            <tr>
                                                <td>12+ 2MP</td>
                                                <td>Rear Camera</td>
                                                <td>13+ 2MP</td>
                                            </tr>
                                            <tr>
                                                <td>8 MP</td>
                                                <td>Front Camera</td>
                                                <td>5MP</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div><img src="logo-1.jpg" height="25px"> <span>6450</span></div>
                                                    <div><img src="logo-2.jpg" height="25px"> <span>5450</span></div>
                                                    <div><img src="logo-3.jpg" height="25px"> <span>4450</span></div>
                                                    <div><img src="logo-4.jpg" height="25px"> <span>3450</span></div>
                                                </td>
                                                <td align="center">Price</td>
                                                <td>
                                                    <div><img src="logo-1.jpg" height="25px"> <span>6450</span></div>
                                                    <div><img src="logo-2.jpg" height="25px"> <span>5450</span></div>
                                                    <div><img src="logo-3.jpg" height="25px"> <span>4450</span></div>
                                                    <div><img src="logo-4.jpg" height="25px"> <span>3450</span></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td align="center" valign="top" class="hidden-xs"><strong>Xiaomi Redmi 7</strong><br><img src="2.png" width="150px"></td>
                                </tr>
                            </table>
                            @endforeach
                        </div>
                    </div>
                    <nav class="bottom-space">
                        <ul class="pagination justify-content-end">
                            {{-- {{$toptens->links('vendor.pagination.bootstrap-4')}} --}}
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


