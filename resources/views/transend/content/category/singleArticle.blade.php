@extends('transend_layouts.master')
@section('mainContent')
 <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">
                        <!-- Single Featured Post -->
                        <div class="single-blog-post featured-post mb-30">
                            <div class="post-data">
                                <a href="#" class="post-catagory">{{ $articles->content['content_type_name'] }}</a>
                                <a href="#" class="post-title">
                                    <h6>{{ $articles->title }}</h6>
                                </a>
                                <div class="post-thumb">
                                    <a href="#"><img src="{{ URL::to('upload/'. $articles->image) }}" alt=""></a>
                                </div>
                                <div class="post-meta">
                                    <p class="post-author">By <a href="#">{{ $articles->author['author'] }}</a></p>
                                    <p class="post-excerp">{{ strip_tags($articles->description) }}</p>
                                    <!-- Post Like & Post Comment -->
                                    <div class="d-flex align-items-center">
                                        <a href="#" class="post-like"><img src="{{ URL::to('frontend/img/core-img/like.png') }}" alt=""><span>392</span></a>
                                        <a href="#" class="post-comment"><img src="{{ URL::to('frontend/img/core-img/chat.png')}}" alt=""> <span>10</span></a>
                                    </div>
                                </div>
                            </div>
                <!-- Comment Area Start -->
                <div class="comment_area clearfix">
                    <h5 class="title">{{ count($articles->comments) }} Comments</h5>
                    <ol>
                        @foreach($articles->comments as $comment)
                        <!-- Single Comment Area -->
                        <li class="single_comment_area">
                            <!-- Comment Content -->
                            <div class="comment-content d-flex">
                                <!-- Comment Author -->
                                {{-- <div class="comment-author">
                                    <img src="img/bg-img/30.jpg" alt="author">
                                </div> --}}
                                <!-- Comment Meta -->
                                <div class="comment-meta">
                                    <a href="#" class="post-author">{{ $comment->user->name }}</a>
                                    <a href="#" class="post-date"></a>
                                    {{ ($comment->created_at >= $comment->updated_at)?date('d-M-y', strtotime($comment->created_at)) : date('d-M-y', strtotime($comment->updated_at)) }}
                                    <p>{{ $comment->comment }}</p>
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ol>
                </div>
                @if (!(Auth::check()))        
                    <div class="contact-form-area">    
                        <div class="post-a-comment-area section-padding-80-0">
                            <h4>Login For a comment</h4>    
                            <!-- Reply Form -->
                            <div class="contact-form-area">
                                <form action="{{ route('login') }}" method="post">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        {{-- <div class="col-12 col-lg-6{{ $errors->has('name') ? ' has-error' : '' }}">
                                            <input type="text" class="form-control" id="name" placeholder="Name*" name="name" value="{{ old('name') }}">
                                            @if ($errors->has('name'))
                                                <span class="help-block">
                                                    <p style="color:red">{{ $errors->first('name') }}</p>
                                                </span>
                                            @endif
                                        </div> --}}
                                        <div class="col-12 col-lg-6{{ $errors->has('email') ? ' has-error' : '' }}">
                                            <input type="email" class="form-control" id="email" placeholder="Email*" name="email" value="{{ old('email') }}">
                                            @if ($errors->has('email'))
                                                <span class="help-block">
                                                    <p style="color:red">{{ $errors->first('email') }}</p>
                                                </span>
                                            @endif
                                        </div>
                                        <div class="col-12 col-lg-6{{ $errors->has('password') ? ' has-error' : '' }}">
                                            <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                                            @if ($errors->has('password'))
                                                <span class="help-block">
                                                    <p style="color:red">{{ $errors->first('password') }}</p>
                                                </span>
                                            @endif
                                        </div>
                                        {{-- <div class="col-12 col-lg-6">
                                            <input type="password" class="form-control" id="password-confirm" name="password_confirmation" placeholder="Password confirmation">
                                        </div> --}}
                                        <div class="col-12 text-center">
                                            <button class="btn newspaper-btn mt-30 w-100" type="submit">Login To Comment</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                @else
                    <div class="contact-form-area">    
                        <div class="post-a-comment-area section-padding-80-0">
                            <h4>Leave a comment</h4>    
                            <!-- Reply Form -->
                            <div class="contact-form-area">
                                <form action="{{ route('add_comment',['article_id' => $articles->id]) }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea name="comment" class="form-control" id="comment" cols="30" rows="10" placeholder="Comment"></textarea>
                                        </div>
                                        <div class="col-12 text-center">
                                            <button class="btn newspaper-btn mt-30 w-100" type="submit">Add Comment</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>                    
                @endif    
                    </div>
                </div>
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