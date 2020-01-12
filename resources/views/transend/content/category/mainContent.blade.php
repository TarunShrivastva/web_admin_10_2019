@extends('transend_layouts.master')
@section('mainContent')
 <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">
                        <!-- Single Featured Post -->
                    @foreach($articles as $article)    
                        <div class="single-blog-post featured-post mb-30">
                            <div class="post-data">
                                <a href="{{ URL::to( 'hi/'.$article->content['content_type_name']. '/' . $article->category['url']) }}" class="post-catagory">{{ $article->category['url'] }}</a>
                                <a href="{{ URL::to( 'hi/'.$article->content['content_type_name']. '/' . $article->category['url'] . '/' . $article->alias . '-' . $article->id) }}" class="post-title">
                                    <h6>{{ $article->title }}</h6>
                                </a>
                                <p class="post-author">By <a href="#">{{ $article->author['author'] }}</a> | Published on {{ date('d-m-Y H:i:s', strtotime($article->updated_at)) }}
                                    IST</p>
                                <div class="post-thumb">
                                    <a href="{{ URL::to( 'hi/'.$article->content['content_type_name']. '/' . $article->category['url'] . '/' . $article->alias . '-' . $article->id) }}"><img src="{{ URL::to('upload/'.$article->image) }}" alt="{{URL::to('uploads/'.$article->image) }}"></a>
                                </div>
                                <div class="post-meta">
                                    <p class="post-excerp">{{ str_limit(strip_tags($article->description),200) }}</p>
                                    <!-- Post Like & Post Comment -->
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="post-like"><img src="{{ URL::to('frontend/img/core-img/like.png') }}" alt="{{ URL::to('frontend/img/core-img/like.png') }}"> <span>392</span></a>
                                        <a href="#" class="post-comment"><img src="{{ URL::to('frontend/img/core-img/chat.png')}}" alt="{{ URL::to('frontend/img/core-img/chat.png')}}"> <span>10</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach    
                    </div>
                    <nav class="bottom-space">
                        <ul class="pagination justify-content-end">
                            {{$articles->links('vendor.pagination.bootstrap-4')}}
                        </ul>
                    </nav>    
                </div>
@endsection
@section('side_section')
    <div class="col-12 col-lg-4">
                    <div class="blog-sidebar-area">
                        {!! $recentArticles !!}
                        <!-- Popular News Widget -->
                        <div class="popular-news-widget mb-50">
                            <h3>5 {{ __('hi.Most Popular News') }}</h3>
                             {!! $trendingArticles !!}                  
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


{{-- @extends('frontend_layouts.mainadmin')
@section('mainContent')
 <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">
                        <!-- Single Featured Post -->
                    @foreach($articles as $article)    
                        <div class="single-blog-post featured-post mb-30">
                            <div class="post-thumb">
                                <a href="{{ URL::to( $article->category['url'] . '/' . $article->content['content_type_name'] . '/' . $article->alias . '-' . $article->id) }}"><img src="{{ URL::to('uploads/'.$article->image) }}" alt="{{ $article->image }}"></a>
                            </div>
                            <div class="post-data">
                                <a href="{{ URL::to( $article->category['url'] . '/' . $article->content['content_type_name'])  }}" class="post-catagory">{{ $article->content['content_type_name'] }}</a>
                                <a href="{{ URL::to( $article->category['url'] . '/' . $article->content['content_type_name'] . '/' . $article->alias . '-' . $article->id) }}" class="post-title">
                                    <h6>{{ $article->title }}</h6>
                                </a>
                                <div class="post-meta">
                                    <p class="post-author">By <a href="#">{{ $article->author['author'] }}</a></p>
                                    <p class="post-excerp">{{ strip_tags($article->description) }}</p>
                                    <!-- Post Like & Post Comment -->
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="post-like"><img src="{{ URL::to('frontend/img/core-img/like.png') }}" alt=""> <span>392</span></a>
                                        <a href="#" class="post-comment"><img src="{{ URL::to('frontend/img/core-img/chat.png')}}" alt=""> <span>10</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach    
                    </div>
                    <nav>
                        <ul class="pagination justify-content-end">
                            {{$articles->links('vendor.pagination.bootstrap-4')}}
                        </ul>
                    </nav>    
                </div>
@endsection
@section('side_section')
    <div class="col-12 col-lg-4">
                    <div class="blog-sidebar-area">
                        {!! $recentArticles !!}
                        <!-- Popular News Widget -->
                        <div class="popular-news-widget mb-50">
                            <h3>5 {{ __('hi.Most Popular News') }}</h3>
                             {!! $trendingArticles !!}                  
                        </div>

                        <!-- Newsletter Widget -->
                        <div class="newsletter-widget mb-50">
                            <h4>Newsletter</h4>
                            <p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                            <form action="#" method="post">
                                <input type="text" name="text" placeholder="Name">
                                <input type="email" name="email" placeholder="Email">
                                <button type="submit" class="btn w-100">Subscribe</button>
                            </form>
                        </div>
                   </div>
                </div>
@endsection   --}}