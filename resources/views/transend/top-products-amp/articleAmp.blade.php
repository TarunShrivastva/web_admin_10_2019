@extends('transend_layouts.amp_layouts.masterAmp')
@section('amp_css')
<style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
    <style amp-custom>body{font-family:'Roboto',sans-serif;font-size:14px}*{padding:0;margin:0}*,::after,::before{box-sizing:border-box}.header-area{position:relative;z-index:100;width:100%}header{display:block}.header-area .top-header-area{width:100%;height:70px;background-color:#ee002d;position:fixed;z-index:1;top:0;}.newspaper-main-menu{position: fixed; width: 100%; top: 70px;}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto;max-width:720px}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.col-12{position:relative;width:100%;min-height:1px;padding-right:15px;padding-left:15px}.col-4{position:relative;min-height:1px;padding-right:15px;padding-left:15px}.justify-content-between{-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between}.col-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.col-4{flex:0 0 32.333333%;max-width:32.333333%}.d-flex{display:-ms-flexbox;display:flex}.align-items-center{-ms-flex-align:center;align-items:center}.header-area .top-header-area .login-search-area{position:relative;z-index:1;width:100%}a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}a,a:hover,a:focus{text-decoration:none;outline:0 solid transparent;color:#1c1c1c;font-weight:500;font-size:14px;color:#828282}.header-area .top-header-area .login-search-area .login a{display:inline-block;padding:0 10px;color:#fff}.header-area .top-header-area .login-search-area .search-form{width:100%}.header-area .top-header-area .login-search-area .search-form form{margin-left:0;width:100%;height:40px;position:relative;z-index:2}[type=search]{outline-offset:-2px;-webkit-appearance:none}[type=search]::placeholder{color:#fff;opacity:1}.form-control{display:block;line-height:1.5;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}.header-area .top-header-area .login-search-area .search-form form input{box-shadow:none;width:100%;height:100%;border:1px solid #fff;border-radius:5px;background-color:transparent;padding:0 15px;font-size:12px;font-style:italic;color:#fff}button,input{border-radius:0;margin:0;font-family:inherit;font-size:inherit;line-height:inherit}.header-area .top-header-area .login-search-area .search-form form button{width:25px;height:100%;position:absolute;top:0;right:0;z-index:10;border:none;background-color:transparent;color:#fff;cursor:pointer;outline:none}.top-header-content{height:70px}.newspaper-main-menu .classy-nav-container{position:relative;z-index:100;background-color:#272626}.header-area .newspaper-main-menu .classy-navbar{height:80px;padding:0;width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.header-area .newspaper-main-menu .classy-navbar .logo{display:block}.header-area .newspaper-main-menu .classy-navbar .logo a{display:block;max-width:160px}img{height:auto;max-width:100%}.breakpoint-on .classy-navbar-toggler,.breakpoint-on .classycloseIcon{display:block;border:none;background-color:transparent;cursor:pointer}.classy-navbar-toggler .navbarToggler{display:inline-block;cursor:pointer}.classy-navbar-toggler .navbarToggler span{position:relative;background-color:#858585;border-radius:3px;display:block;height:3px;margin-top:5px;padding:0;width:30px;cursor:pointer}.classy-menu{display:none}.hero-area{position:relative;z-index:1;padding: 85px 0 20px 0px;margin-top:0px;}.hero-area .breaking-news-area{position:relative;z-index:1}.hero-area .breaking-news-area .news-title{min-width:150px;height:50px;background-color:#ee002d;text-align:center;padding:0 20px}.hero-area .breaking-news-area .ticker{width:100%;text-align:left;position:relative;overflow:hidden;padding:0 20px;background-color:#f3f5f8;height:50px}.mt-15{margin-top:15px}.hero-area .breaking-news-area .news-title p{margin-bottom:0;font-weight:600;color:#fff;line-height:50px}.hero-area .breaking-news-area .ticker ul{width:100%;position:relative;z-index:1;list-style:none}.tickerHook{padding:8px 0}.tickerHook a{line-height:18px}.hero-area .breaking-news-area .ticker ul li{width:100%}.hero-area .breaking-news-area .news-title.title2{background-color:#152535}.hero-add{margin-top:40px;position:relative;z-index:1;text-align:center}.single-blog-post.featured-post{position:relative;z-index:1}.blog-post-author{position:relative;z-index:1;padding:40px 0;border-top:1px solid;border-bottom:1px solid;border-color:#d0d5d8}.blog-post-author .author-thumbnail{-webkit-box-flex:0;-ms-flex:0 0 90px;flex:0 0 90px;min-width:90px;padding-right:20px;width:90px;height:90px;border-radius:50%}.blog-post-author .author-thumbnail img{border-radius:50%}.blog-post-author .author-info a{display:block;color:#000;font-size:16px;margin-bottom:15px}.blog-post-author .author-info p{line-height:2;margin-bottom:0}p{color:#828282;font-size:14px;line-height:2;font-weight:400}.pager{position:relative;z-index:1}.pager a{display:inline-block;width:140px;height:40px;line-height:40px;font-size:14px;font-weight:700;text-transform:uppercase;background-color:#eff4f9;text-align:center;color:#1c1c1c;margin:20px 0}.pager a.active,.pager a:hover,.pager a:focus{background-color:#1c1c1c;color:#fff}.section-heading{position:relative;z-index:1;margin-bottom:90px;border-bottom:1px solid #d0d5d8}.section-heading h6{font-size:16px;margin-bottom:0;line-height:45px;height:45px;min-width:140px;padding:0 30px;background-color:#ee002d;color:#fff;font-weight:700;display:inline-block;text-align:center}.single-blog-post{position:relative;z-index:1}.single-blog-post.style-3{margin-bottom:20px}.single-blog-post .post-thumb a{display:block}img{vertical-align:middle;border-style:none}.single-blog-post.style-3 .post-data{padding:15px 0}.single-blog-post .post-data .post-catagory{font-size:14px;color:#ee002d;text-transform:uppercase;font-weight:700;margin-bottom:10px;display:block}.single-blog-post .post-data .post-title{display:block}.single-blog-post.style-3 .post-data .post-title h6{font-size:14px;line-height:1.7;margin-bottom:30px;font-weight:500}.single-blog-post .post-data .post-meta .post-like{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:flex-end;-ms-flex-align:flex-end;-ms-grid-row-align:flex-end;align-items:flex-end}.single-blog-post .post-data .post-meta .post-like span,.single-blog-post .post-data .post-meta .post-comment span{line-height:1;margin-left:15px}.single-blog-post .post-data .post-meta .post-comment{margin-left:20px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:flex-end;-ms-flex-align:flex-end;-ms-grid-row-align:flex-end;align-items:flex-end}.comment_area{border-bottom:1px solid #d0d5d8;padding-bottom:20px}.comment_area .title{margin-bottom:30px;color:#152535;line-height:1.3;font-weight:700;font-size:1.1rem}ul li,ol li{list-style:none}.comment_area .single_comment_area,.comment_area .comment-content .comment-meta{margin-bottom:15px}.comment_area .comment-content .comment-author{-webkit-box-flex:0;-ms-flex:0 0 51px;flex:0 0 51px;min-width:51px;margin-right:45px;height:51px;border-radius:50%}.comment_area .comment-content .comment-author img{border-radius:50%}.comment_area .comment-content .comment-meta .post-author{margin-bottom:5px;display:block;font-size:16px;color:#393939}.comment_area .comment-content .comment-meta .post-date{font-size:12px;text-transform:uppercase;margin-bottom:0;color:#656565;display:block;margin-bottom:15px}.comment_area .comment-content .comment-meta p{margin-bottom:15px;font-size:14px;line-height:2;font-weight:500}.post-a-comment-area{position:relative;z-index:1}.post-a-comment-area h4{font-size:20px;color:#393939;margin-bottom:50px}.section-padding-80-0{padding-top:40px;padding-bottom:0}.contact-form-area{margin-bottom:40px}.contact-form-area .form-control{height:45px;width:100%;background-color:#f3f5f8;font-size:12px;font-style:italic;margin-bottom:15px;border:none;border-radius:0;padding:0 20px}.contact-form-area textarea.form-control{height:100px;padding:15px 20px}.newspaper-btn{display:inline-block;min-width:160px;width:100%;height:52px;color:#fff;border:none;border-radius:0;padding:0 30px;font-size:14px;line-height:52px;font-weight:700;text-transform:capitalize;background-color:#ee002d}.single-blog-post.small-featured-post{position:relative;z-index:1;border-bottom:1px solid #d0d5d8;padding:20px 0}.single-blog-post.small-featured-post:first-child{padding-top:0}.single-blog-post.small-featured-post .post-thumb{-webkit-box-flex:0;-ms-flex:0 0 90px;flex:0 0 90px;max-width:90px;width:90px;margin-right:15px}.single-blog-post .post-data .post-catagory{font-size:14px;color:#ee002d;text-transform:uppercase;font-weight:700;margin-bottom:5px;display:block}.single-blog-post.small-featured-post .post-data .post-date{margin-bottom:0;line-height:1;font-size:12px}.single-blog-post.small-featured-post .post-data .post-title h6{font-size:14px;line-height:1.6;margin-bottom:5px;font-weight:500}.popular-news-widget,.latest-comments-widget{position:relative;z-index:1;background-color:#eff4f9;padding:22px}.popular-news-widget h3{font-size:24px;margin-bottom:20px;font-weight:400;color:#ee002d}.popular-news-widget .single-popular-post{position:relative;z-index:1;margin-bottom:20px}.popular-news-widget .single-popular-post h6{color:#000;line-height:1.7;font-weight:600;font-size:14px;padding-bottom:5px; text-indent: -26px; margin-left: 21px;}.popular-news-widget .single-popular-post h6 span{margin-right:10px;color:#ee002d}.popular-news-widget .single-popular-post p{margin-bottom:0;font-size:11px;text-transform:uppercase;font-weight:700;color:#828282;margin-left:20px;line-height:1}.newsletter-widget{position:relative;z-index:1;background-color:#02031c;padding:20px}.newsletter-widget h4{text-align:center;color:#ee002d;font-size:20px}.newsletter-widget p{font-size:12px;text-align:center;padding-bottom:20px}.newsletter-widget form input{width:100%;height:50px;background-color:#44425a;font-size:14px;font-style:italic;color:#fff;margin-bottom:25px;border:none;padding:0 25px}.newsletter-widget form button{width:100%;height:50px;background-color:#ee002d;font-size:14px;font-style:italic;color:#fff;border:none;padding:0 25px;border-radius:0}.mb-50{margin-bottom:20px}.latest-comments-widget h3{font-size:18px;margin-bottom:20px;font-weight:400;color:#152535}.latest-comments-widget .single-comments{position:relative;z-index:1;margin-bottom:20px}.latest-comments-widget .single-comments .comments-thumbnail{-webkit-box-flex:0;-ms-flex:0 0 42px;flex:0 0 42px;max-width:42px;width:42px;height:42px;border-radius:50%;margin-top:6px}.latest-comments-widget .single-comments .comments-thumbnail img{border-radius:50%;display:block}.mr-15{margin-right:15px}.latest-comments-widget .single-comments .comments-text a{display:block;font-size:14px;color:#1c1c1c;margin-bottom:10px;line-height:1.9}.latest-comments-widget .single-comments .comments-text p{margin-bottom:0;font-size:11px;text-transform:uppercase;font-weight:700;color:#828282;line-height:1}.footer-area{position:relative;z-index:1;width:100%;background-color:#02031c;margin-top:30px}.mt-80{margin-top:30px}.footer-area .footer-widget-area .footer-logo{margin-bottom:10px}.footer-area .footer-widget-area .list{position:relative;z-index:1}.footer-area .footer-widget-area .list li{display:block}.footer-area .footer-widget-area .list li a:hover,.footer-area .footer-widget-area .list li a:focus{color:#fff}.footer-area .footer-widget-area .list li a{display:block;padding:5px 0;color:rgba(255,255,255,0.5)}.footer-area .footer-widget-area .widget-title{display:block;margin-bottom:15px;color:#fff;font-size:14px}.bottom-footer-area p{margin-top:20px;text-align:center;font-size:10px}.ampstart-sidebar { background-color: #fff; color: #000; min-width: 300px;width:300px;}.px3{padding-left:1rem;padding-right:1rem}.ampstart-sidebar-header{line-height:3.5rem;min-height:3.5rem;text-align:right}.labelclick{outline:none}.items-start{-ms-flex-align:start;align-items:flex-start}.ampstart-nav a,.ampstart-navbar-trigger,.ampstart-sidebar-faq a{cursor:pointer;text-decoration:none}.ampstart-navbar-trigger{font-size:2rem;float:right;outline:none}.ampstart-sidebar .ampstart-navbar-trigger{line-height:inherit;outline:none}.ampstart-byline,.ampstart-caption,.ampstart-hint,.ampstart-label{font-size:.875rem;color:#4f4f4f;line-height:1.125rem;letter-spacing:.06rem}.p0{padding:0}.m0{margin:0}.ampstart-label{text-transform:uppercase;font-size:14px}.ampstart-label li{padding:5px 0}.ampstart-label .labelclick span{float:right;font-size:16px}.labelclick{border:0;background-color:#fff}.ampstart-dropdown-items{padding-left:10px;padding-top:10px;font-size:13px}.single-blog-post.featured-post .post-data .post-title h6 { font-size: 24px; line-height: 1.2; margin-bottom: 10px; font-weight: 500;color:#000;margin-top:10px; }.single-blog-post.featured-post .post-data .post-title h6:hover,.single-blog-post.featured-post.single-post .post-data .related--post:hover  { color: #ee002d;}.single-blog-post.featured-post .post-data .post-author { margin-bottom: 15px; display: block; width: 100%; } .single-blog-post.featured-post .post-data .post-author a { display: inline-block; color: #ee002d; }.single-blog-post.featured-post.single-post .post-data p { margin-bottom: 10px; } .single-blog-post.featured-post.single-post .post-data .related--post {display: block;font-size: 17px;color: #2c61db;margin: 20px 0;}.newspaper-post-like { -ms-flex-wrap: wrap; flex-wrap: wrap; }.newspaper-tags{position:relative;z-index:1;padding:10px 0;-webkit-box-flex:0;-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%;width:100%}.blog-post-author .author-info a span{color:#656565;font-style:italic}.newspaper-tags span{font-size:14px;color:#393939;font-weight:700;padding-right:5px}.newspaper-tags ul li a{display:inline-block;color:#828282;font-weight:500;padding-right:3px}.post-like--comments{-webkit-box-flex:0;-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%;width:100%;margin-top:10px}.breadcrumbwrap { float: left;width: 100%;margin:20px 0;}.breadcrumb {display: -ms-flexbox;line-height: 15px;display: flex;-ms-flex-wrap: wrap;flex-wrap: wrap;padding: 0;margin-bottom: 1rem;list-style: none;background: none;border-radius: 0;}.breadcrumb a {-webkit-transition: color .3s;transition: color .13s;font-weight: 500;font-size: 13px;line-height: 24px;}.breadcrumb-item+.breadcrumb-item {padding-left: .5rem;}.breadcrumb-item+.breadcrumb-item::before {display: inline-block;padding-right: .5rem;color: #6c757d;content: "/";}.pt4{padding-top:4px;}.breadcrumb-item.active a{color:#000;font-weight: 500;}</style>
@endsection
@section('main_content')
<div class="col-12">
    <div class="blog-posts-area">
        <!-- Single Full Featured Post -->
        <div class="single-blog-post featured-post single-post">
            <div class="row">
                <div class="col-12">
                    <div class="single-blog-post style-3 mb-80">
                        <div class="post-data">
                            <a href="#" class="post-catagory">{{ $articles->content['content_type_name'] }}</a>
                            <a href="#" class="post-title">
                                <h6>{{ $articles->title }}</h6>
                            </a>
                            <a href="#"><amp-img src="{{ URL::to('upload/'. $articles->image) }}"  alt="singleblog" width="1000" height="484" layout="responsive"></amp-img></a>
                            
                            <div class="post-meta">
                                <p class="post-author">By <a href="#">{{ $articles->author['author'] }}</a></p>
                                <p>{{ strip_tags($articles->description) }}</p>
                                {{-- <a href="#" class="related--post">Related: Facebook announces changes to combat election meddling</a>
                                <p>Donec turpis erat, scelerisque id euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellentesque lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis sapien. Aliquam erat volutpat. Aliquam placerat, est quis sagi ttis tincidunt, ipsum eros posuere mi, ut finibus quam sem eget ex. Interdum et malesuada fames ac ante ipsum pr imis in faucibus. Donec commodo quis enim ac auctor. Ut et mollis felis, sit amet ultricies est. Suspendisse sed faucibus tortor. </p> --}}

                                <div class="newspaper-post-like d-flex align-items-center justify-content-between">

                                    {{-- <div class="newspaper-tags d-flex">
                                    <span>Tags:</span>
                                    <ul class="d-flex">
                                    <li><a href="#">finacial,</a></li>
                                    <li><a href="#">politics,</a></li>
                                    <li><a href="#">stock market</a></li>
                                    </ul>
                                    </div> --}}
                                    <div class="d-flex align-items-center post-like--comments">
                                        <a href="#" class="post-like"><amp-img src="{{ URL::to('frontend/img/core-img/like.png') }}"  alt="like" width="17" height="17" layout="responsive" sizes="(min-width: 569px) 17px, 17px"></amp-img> <span>392</span></a>
                                        <a href="#" class="post-comment"><amp-img src="{{ URL::to('frontend/img/core-img/chat.png')}}"  alt="search" width="17" height="17" layout="responsive" sizes="(min-width: 569px) 17px, 17px"></amp-img> <span>10</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Comment Area Start -->
                    <div class="col-12">
                        <div class="comment_area clearfix">
                            <h5 class="title">{{ count($articles->comments) }} Comments</h5>
                            <ol>
                                @foreach($articles->comments as $comment)
                                <li class="single_comment_area">
                                    <div class="comment-content d-flex">
                                        {{-- <!-- Comment Author -->
                                        <div class="comment-author">
                                            <amp-img src="images/30.jpg"  alt="comment-author" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img>
                                        </div> --}}
                                        <!-- Comment Meta -->
                                        <div class="comment-meta">
                                            <a href="#" class="post-author">{{ $comment->user->name }}</a>
                                            <a href="#" class="post-date">{{ ($comment->created_at >= $comment->updated_at)?date('d-M-y', strtotime($comment->created_at)) : date('d-M-y', strtotime($comment->updated_at)) }}</a>
                                            <p>{{ $comment->comment }}</p>
                                        </div>
                                    </div>
                                </li>
                                @endforeach   
                            </ol>
                        </div>
                    </div>    
                @if (!(Auth::check()))
                <div class="col-12">
                    <div class="blog-posts-area">
                        <div class="post-a-comment-area section-padding-80-0">
                            <h4>Login For a Comment</h4>
                            <!-- Reply Form -->
                            <div class="contact-form-area">
                                <form method="post" action-xhr="#" target="_blank">
                                    <div class="row">
                                        <div class="col-12">
                                            <input type="email" class="form-control" id="email" placeholder="Email*">
                                        </div>
                                        <div class="col-12">
                                            <input type="password" class="form-control" id="password" placeholder="Password*">
                                        </div>
                                        <div class="col-12 text-center">
                                            <button class="btn newspaper-btn mt-30 w-100" type="submit">Submit Comment</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                @else
                <div class="col-12">
                    <div class="blog-posts-area">
                        <div class="post-a-comment-area section-padding-80-0">
                            <h4>Add a Comment</h4>
                            <div class="contact-form-area">
                                <form method="post" action-xhr="#" target="_blank">
                                    <div class="row">
                                        <div class="col-12">
                                            <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                        </div>
                                        <div class="col-12 text-center">
                                            <button class="btn newspaper-btn mt-30 w-100" type="submit">Submit Comment</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
@section('side_section')
<div class="col-12">
    <div class="blog-posts-area">
        <div class="blog-sidebar-area">
            <!-- Popular News Widget -->
            <div class="popular-news-widget mb-50">
                <!-- Single Popular Blog -->
                    {!! $recentArticles !!}
            </div>
        </div>
        <!-- Latest Posts Widget -->
        <div class="latest-posts-widget mb-50">
            {!! $trendingArticles !!}
        </div>
        {{-- @include('transend_layouts.amp_layouts.authorAmp') --}}
        {{-- @include('transend_layouts.amp_layouts.related') --}}
        {{-- @include('transend_layouts.amp_layouts.comments') --}}
    </div>
</div>        
@endsection  