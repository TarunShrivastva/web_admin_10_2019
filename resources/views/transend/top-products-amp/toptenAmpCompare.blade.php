@extends('transend_layouts.amp_layouts.masterAmp')
@section('amp_css')
    <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
    <style amp-custom>body{font-family:'Roboto',sans-serif;font-size:14px}*{padding:0;margin:0}*,::after,::before{box-sizing:border-box}.header-area{position:relative;z-index:100;width:100%}header{display:block}.header-area .top-header-area{width:100%;height:70px;background-color:#ee002d;position:fixed;z-index:1;top:0;}.newspaper-main-menu{position: fixed; width: 100%; top: 70px;}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto;max-width:720px}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.col-12{position:relative;width:100%;min-height:1px;padding-right:15px;padding-left:15px}.col-4{position:relative;min-height:1px;padding-right:15px;padding-left:15px}.justify-content-between{-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between}.col-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.col-4{flex:0 0 32.333333%;max-width:32.333333%}.d-flex{display:-ms-flexbox;display:flex}.align-items-center{-ms-flex-align:center;align-items:center}.header-area .top-header-area .login-search-area{position:relative;z-index:1;width:100%}a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}a,a:hover,a:focus{text-decoration:none;outline:0 solid transparent;color:#1c1c1c;font-weight:500;font-size:14px;color:#828282}.header-area .top-header-area .login-search-area .login a{display:inline-block;padding:0 10px;color:#fff}.header-area .top-header-area .login-search-area .search-form{width:100%}.header-area .top-header-area .login-search-area .search-form form{margin-left:0;width:100%;height:40px;position:relative;z-index:2}[type=search]{outline-offset:-2px;-webkit-appearance:none}[type=search]::placeholder{color:#fff;opacity:1}.form-control{display:block;line-height:1.5;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}.header-area .top-header-area .login-search-area .search-form form input{box-shadow:none;width:100%;height:100%;border:1px solid #fff;border-radius:5px;background-color:transparent;padding:0 15px;font-size:12px;font-style:italic;color:#fff}button,input{border-radius:0;margin:0;font-family:inherit;font-size:inherit;line-height:inherit}.header-area .top-header-area .login-search-area .search-form form button{width:25px;height:100%;position:absolute;top:0;right:0;z-index:10;border:none;background-color:transparent;color:#fff;cursor:pointer;outline:none}.top-header-content{height:70px}.newspaper-main-menu .classy-nav-container{position:relative;z-index:100;background-color:#272626}.header-area .newspaper-main-menu .classy-navbar{height:80px;padding:0;width:100%;display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.header-area .newspaper-main-menu .classy-navbar .logo{display:block}.header-area .newspaper-main-menu .classy-navbar .logo a{display:block;max-width:160px}img{height:auto;max-width:100%}.breakpoint-on .classy-navbar-toggler,.breakpoint-on .classycloseIcon{display:block;border:none;background-color:transparent;cursor:pointer}.classy-navbar-toggler .navbarToggler{display:inline-block;cursor:pointer}.classy-navbar-toggler .navbarToggler span{position:relative;background-color:#858585;border-radius:3px;display:block;height:3px;margin-top:5px;padding:0;width:30px;cursor:pointer}.classy-menu{display:none}.hero-area{position:relative;z-index:1;padding: 85px 0 20px 0px;margin-top:0px;}.hero-area .breaking-news-area{position:relative;z-index:1}.hero-area .breaking-news-area .news-title{min-width:150px;height:50px;background-color:#ee002d;text-align:center;padding:0 20px}.hero-area .breaking-news-area .ticker{width:100%;text-align:left;position:relative;overflow:hidden;padding:0 20px;background-color:#f3f5f8;height:50px}.mt-15{margin-top:15px}.hero-area .breaking-news-area .news-title p{margin-bottom:0;font-weight:600;color:#fff;line-height:50px}.hero-area .breaking-news-area .ticker ul{width:100%;position:relative;z-index:1;list-style:none}.tickerHook{padding:8px 0}.tickerHook a{line-height:18px}.hero-area .breaking-news-area .ticker ul li{width:100%}.hero-area .breaking-news-area .news-title.title2{background-color:#152535}.hero-add{margin-top:40px;position:relative;z-index:1;text-align:center}.single-blog-post.featured-post{position:relative;z-index:1}.table-n td span.label{font-size:15px;margin-bottom:20px;} .table-n h2{font-size:22px;font-style:italic;color:#e64444;margin-bottom:20px;font-family:serif;text-align:center}.table-n h4{font-size:18px;font-weight:300;text-transform:uppercase;font-family:arial;margin:5px 0 25px;color:#6caaf7;text-align:center}.table-n{width:100%;max-width:100%;border-collapse:collapse;font-family:arial;border-color:#eee;max-width:100%;margin-bottom:15px}.table-n td{padding:2px;line-height:25px;border-color:#eee;font-size:12px;line-height:18px}.table-n .visible-sm{display:table-row}.table-n table{width:100%}.table-n table td{padding:5px;border:1px solid #dcdcdc;width: 33.3%; max-width: 33%; min-width: 32%; word-break: break-all;}.table-n table.prodt td{padding:5px;border:1px solid #dcdcdc;width: auto; max-width: auto; min-width: auto; word-break: break-all;}.blog-post-author{position:relative;z-index:1;padding:40px 0;border-top:1px solid;border-bottom:1px solid;border-color:#d0d5d8}.blog-post-author .author-thumbnail{-webkit-box-flex:0;-ms-flex:0 0 90px;flex:0 0 90px;min-width:90px;padding-right:20px;width:90px;height:90px;border-radius:50%}.blog-post-author .author-thumbnail img{border-radius:50%}.blog-post-author .author-info a{display:block;color:#000;font-size:16px;margin-bottom:15px}.blog-post-author .author-info p{line-height:2;margin-bottom:0}p{color:#828282;font-size:14px;line-height:2;font-weight:400}.pager{position:relative;z-index:1}.pager a{display:inline-block;width:140px;height:40px;line-height:40px;font-size:14px;font-weight:700;text-transform:uppercase;background-color:#eff4f9;text-align:center;color:#1c1c1c;margin:20px 0}.pager a.active,.pager a:hover,.pager a:focus{background-color:#1c1c1c;color:#fff}.section-heading{position:relative;z-index:1;margin-bottom:90px;border-bottom:1px solid #d0d5d8}.section-heading h6{font-size:16px;margin-bottom:0;line-height:45px;height:45px;min-width:140px;padding:0 30px;background-color:#ee002d;color:#fff;font-weight:700;display:inline-block;text-align:center}.single-blog-post{position:relative;z-index:1}.single-blog-post.style-3{margin-bottom:20px}.single-blog-post .post-thumb a{display:block}img{vertical-align:middle;border-style:none}.single-blog-post.style-3 .post-data{padding:15px 0}.single-blog-post .post-data .post-catagory{font-size:14px;color:#ee002d;text-transform:uppercase;font-weight:700;margin-bottom:10px;display:block}.single-blog-post .post-data .post-title{display:block}.single-blog-post.style-3 .post-data .post-title h6{font-size:14px;line-height:1.7;margin-bottom:30px;font-weight:500}.single-blog-post .post-data .post-meta .post-like{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:flex-end;-ms-flex-align:flex-end;-ms-grid-row-align:flex-end;align-items:flex-end}.single-blog-post .post-data .post-meta .post-like span,.single-blog-post .post-data .post-meta .post-comment span{line-height:1;margin-left:15px}.single-blog-post .post-data .post-meta .post-comment{margin-left:20px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:flex-end;-ms-flex-align:flex-end;-ms-grid-row-align:flex-end;align-items:flex-end}.comment_area{border-bottom:1px solid #d0d5d8;padding-bottom:20px}.comment_area .title{margin-bottom:30px;color:#152535;line-height:1.3;font-weight:700;font-size:1.1rem}ul li,ol li{list-style:none}.comment_area .single_comment_area,.comment_area .comment-content .comment-meta{margin-bottom:15px}.comment_area .comment-content .comment-author{-webkit-box-flex:0;-ms-flex:0 0 51px;flex:0 0 51px;min-width:51px;margin-right:45px;height:51px;border-radius:50%}.comment_area .comment-content .comment-author img{border-radius:50%}.comment_area .comment-content .comment-meta .post-author{margin-bottom:5px;display:block;font-size:16px;color:#393939}.comment_area .comment-content .comment-meta .post-date{font-size:12px;text-transform:uppercase;margin-bottom:0;color:#656565;display:block;margin-bottom:15px}.comment_area .comment-content .comment-meta p{margin-bottom:15px;font-size:14px;line-height:2;font-weight:500}.post-a-comment-area{position:relative;z-index:1}.post-a-comment-area h4{font-size:20px;color:#393939;margin-bottom:50px}.section-padding-80-0{padding-top:40px;padding-bottom:0}.contact-form-area{margin-bottom:40px}.contact-form-area .form-control{height:45px;width:100%;background-color:#f3f5f8;font-size:12px;font-style:italic;margin-bottom:15px;border:none;border-radius:0;padding:0 20px}.contact-form-area textarea.form-control{height:100px;padding:15px 20px}.newspaper-btn{display:inline-block;min-width:160px;width:100%;height:52px;color:#fff;border:none;border-radius:0;padding:0 30px;font-size:14px;line-height:52px;font-weight:700;text-transform:capitalize;background-color:#ee002d}.single-blog-post.small-featured-post{position:relative;z-index:1;border-bottom:1px solid #d0d5d8;padding:20px 0}.single-blog-post.small-featured-post:first-child{padding-top:0}.single-blog-post.small-featured-post .post-thumb{-webkit-box-flex:0;-ms-flex:0 0 90px;flex:0 0 90px;max-width:90px;width:90px;margin-right:15px}.single-blog-post .post-data .post-catagory{font-size:14px;color:#ee002d;text-transform:uppercase;font-weight:700;margin-bottom:5px;display:block}.single-blog-post.small-featured-post .post-data .post-date{margin-bottom:0;line-height:1;font-size:12px}.single-blog-post.small-featured-post .post-data .post-title h6{font-size:14px;line-height:1.6;margin-bottom:5px;font-weight:500}.popular-news-widget,.latest-comments-widget{position:relative;z-index:1;background-color:#eff4f9;padding:22px}.popular-news-widget h3{font-size:24px;margin-bottom:20px;font-weight:400;color:#ee002d}.popular-news-widget .single-popular-post{position:relative;z-index:1;margin-bottom:20px}.popular-news-widget .single-popular-post h6{color:#000;line-height:1.7;font-weight:600;font-size:14px;padding-bottom:5px; text-indent: -26px; margin-left: 21px;}.popular-news-widget .single-popular-post h6 span{margin-right:10px;color:#ee002d}.popular-news-widget .single-popular-post p{margin-bottom:0;font-size:11px;text-transform:uppercase;font-weight:700;color:#828282;margin-left:20px;line-height:1}.newsletter-widget{position:relative;z-index:1;background-color:#02031c;padding:20px}.newsletter-widget h4{text-align:center;color:#ee002d;font-size:20px}.newsletter-widget p{font-size:12px;text-align:center;padding-bottom:20px}.newsletter-widget form input{width:100%;height:50px;background-color:#44425a;font-size:14px;font-style:italic;color:#fff;margin-bottom:25px;border:none;padding:0 25px}.newsletter-widget form button{width:100%;height:50px;background-color:#ee002d;font-size:14px;font-style:italic;color:#fff;border:none;padding:0 25px;border-radius:0}.mb-50{margin-bottom:20px}.latest-comments-widget h3{font-size:18px;margin-bottom:20px;font-weight:400;color:#152535}.latest-comments-widget .single-comments{position:relative;z-index:1;margin-bottom:20px}.latest-comments-widget .single-comments .comments-thumbnail{-webkit-box-flex:0;-ms-flex:0 0 42px;flex:0 0 42px;max-width:42px;width:42px;height:42px;border-radius:50%;margin-top:6px}.latest-comments-widget .single-comments .comments-thumbnail img{border-radius:50%;display:block}.mr-15{margin-right:15px}.latest-comments-widget .single-comments .comments-text a{display:block;font-size:14px;color:#1c1c1c;margin-bottom:10px;line-height:1.9}.latest-comments-widget .single-comments .comments-text p{margin-bottom:0;font-size:11px;text-transform:uppercase;font-weight:700;color:#828282;line-height:1}.footer-area{position:relative;z-index:1;width:100%;background-color:#02031c;margin-top:30px}.mt-80{margin-top:30px}.footer-area .footer-widget-area .footer-logo{margin-bottom:10px}.footer-area .footer-widget-area .list{position:relative;z-index:1}.footer-area .footer-widget-area .list li{display:block}.footer-area .footer-widget-area .list li a:hover,.footer-area .footer-widget-area .list li a:focus{color:#fff}.footer-area .footer-widget-area .list li a{display:block;padding:5px 0;color:rgba(255,255,255,0.5)}.footer-area .footer-widget-area .widget-title{display:block;margin-bottom:15px;color:#fff;font-size:14px}.bottom-footer-area p{margin-top:20px;text-align:center;font-size:10px}.ampstart-sidebar { background-color: #fff; color: #000; min-width: 300px;width:300px;}.px3{padding-left:1rem;padding-right:1rem}.ampstart-sidebar-header{line-height:3.5rem;min-height:3.5rem;text-align:right}.labelclick{outline:none}.items-start{-ms-flex-align:start;align-items:flex-start}.ampstart-nav a,.ampstart-navbar-trigger,.ampstart-sidebar-faq a{cursor:pointer;text-decoration:none}.ampstart-navbar-trigger{font-size:2rem;float:right;outline:none}.ampstart-sidebar .ampstart-navbar-trigger{line-height:inherit;outline:none}.ampstart-byline,.ampstart-caption,.ampstart-hint,.ampstart-label{font-size:.875rem;color:#4f4f4f;line-height:1.125rem;letter-spacing:.06rem}.p0{padding:0}.m0{margin:0}.ampstart-label{text-transform:uppercase;font-size:14px}.ampstart-label li{padding:5px 0}.ampstart-label .labelclick span{float:right;font-size:16px}.labelclick{border:0;background-color:#fff}.ampstart-dropdown-items{padding-left:10px;padding-top:10px;font-size:13px}.tleft{text-align:left;}.tcenter{text-align:center;}.f600{font-weight:600;} .blog-post-author .author-info a span{color:#656565;font-style:italic}.breadcrumbwrap { float: left;width: 100%;margin:20px 0;}.breadcrumb {display: -ms-flexbox;line-height: 15px;display: flex;-ms-flex-wrap: wrap;flex-wrap: wrap;padding: 0;margin-bottom: 1rem;list-style: none;background: none;border-radius: 0;}.breadcrumb a {-webkit-transition: color .3s;transition: color .13s;font-weight: 500;font-size: 13px;line-height: 24px;}.breadcrumb-item+.breadcrumb-item {padding-left: .5rem;}.breadcrumb-item+.breadcrumb-item::before {display: inline-block;padding-right: .5rem;color: #6c757d;content: "/";}.pt4{padding-top:4px;}.breadcrumb-item.active a{color:#000;font-weight: 500}</style>
@endsection
@section('main_content')
<div class="col-12">
    <div class="blog-posts-area">
        <div class="single-blog-post featured-post single-post">
            @foreach($compArray as $key => $compare)
            <table class="table-n" align="center">
                        <tbody>
                        <tr>
                            <td align="center">
                                <h2>{{ $compare['object']->title }}</h2>
                                <h4>Best Mobile Phones Under 7000 in India</h4>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr class="visible-7">
                                        <td align="center"><span class="label"><strong>{{ $compare['title'][0] }}</strong></span><br><br><amp-img src="{{ URL::to('upload/'. $compare['image'][0]) }}" alt="search" width="261" height="550" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img></td>
                                        <td></td>
                                        <td align="center"><span class="label"><strong>{{ $compare['title'][1] }}</strong></span><br><br><amp-img src="{{ URL::to('upload/'. $compare['image'][1]) }}" alt="search" width="261" height="550" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img></td>
                                    </tr>
                                    @foreach($compare['specifications'] as $key=>$specification)
                                    <tr>
                                        <td >{{ isset($compare['specifications'][$key][1])? $compare['specifications'][$key][1] : 'N/A'}}</td>
                                        <td >{{ isset($compare['specifications'][$key][0])? $compare['specifications'][$key][0] : ''}}</td>
                                        <td >{{ isset($compare['specifications'][$key][2])? $compare['specifications'][$key][2] : 'N/A'}}</td>
                                    </tr>
                                    @endforeach
                                    <tr>
                                        <td>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-1.jpg') }}" style="display: inline-block;" alt="paytm" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['paytm'][0] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-2.jpg') }}" alt="flipkart"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['flipkart'][0] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-3.jpg') }}" alt="amazon"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['amazon'][0] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-4.jpg') }}" alt="tata"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['tata_cliq'][0] }}</span></div>
                                        </td>
                                        <td align="center">Price</td>
                                        <td>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-1.jpg') }}" style="display: inline-block;" alt="paytm" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['paytm'][1] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-2.jpg') }}" alt="flipkart"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['flipkart'][1] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-3.jpg') }}" alt="amazon"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['amazon'][1] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-4.jpg') }}" alt="tata"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['tata_cliq'][1] }}</span></div>
                                        </td>
                                    </tr>
                                </tbody></table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            @endforeach 
            <table class="table-n" align="center">
                                            <tbody><tr>
                                                <td align="center"><h4>Best Camera Mobile Phones under Rs 8000 in India</h4></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table class="prodt" cellspacing="0" cellpadding="0">
                                                        <tbody>
                                                        <tr>
                                                            <td class="f600" style="background: #f7ecec;">Product</td>
                                                            <td class="tleft f600" style="background: #f7ecec;">Price</td>
                                                            <td class="f600" style="background: #f7ecec;">Available at</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redmi 7</td>
                                                            <td>7999</td>
                                                            <td>Amazon</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Realme C2</td>
                                                            <td>6999</td>
                                                            <td>Flipkart</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Infinix Smart 3 Plus</td>
                                                            <td>6999</td>
                                                            <td>Flipkart</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redmi 6</td>
                                                            <td>7499</td>
                                                            <td>Flipkart</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Realme C1</td>
                                                            <td>7499</td>
                                                            <td>Flipkart</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Honor 7A</td>
                                                            <td>7999</td>
                                                            <td>Flipkart</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Samsung Galaxy M10</td>
                                                            <td>7999</td>
                                                            <td>Amazon</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Asus Zenfone Max M1</td>
                                                            <td>6999</td>
                                                            <td>Flipkart</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Vivo Y91i</td>
                                                            <td>7999</td>
                                                            <td>Amazon</td>
                                                        </tr>
                                                        <tr>
                                                            <td>InFocus Turbo 5 Plus</td>
                                                            <td>7999</td>
                                                            <td>Amazon</td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            
                                            </tr>
                                        </tbody></table>   
        </div>
    </div>
</div>        
@endsection
@section('side_section')
{{-- <div class="col-12">
    <div class="blog-posts-area">
        @include('transend_layouts.amp_layouts.comments')
        @include('transend_layouts.amp_layouts.authorAmp')
        @include('transend_layouts.amp_layouts.related')
    </div>
</div>         --}}
@endsection