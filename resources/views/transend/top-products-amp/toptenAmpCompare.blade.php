@extends('transend_layouts.amp_layouts.masterAmp')
@section('main_content')
<div class="col-12">
    <div class="blog-posts-area">
        <!-- Single Featured Post -->
        <div class="single-blog-post featured-post single-post">
            <table class="table-n" align="center">
                        <tbody><tr>
                            <td align="center"><h2>Digital Champ</h2><h4>Best Mobile Phones Under 7000 in India</h4></td>
                        </tr>
                        <tr>
                            <td>
                                <table cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr class="visible-7">
                                        <td align="center"><span class="label"><strong>Xiaomi Redmi 7</strong></span><br><br><amp-img src="{{ URL::to('images/1.png') }}" alt="search" width="261" height="550" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img></td>
                                        <td></td>
                                        <td align="center"><span class="label"><strong>Xiaomi Redmi 7</strong></span><br><br><amp-img src="{{ URL::to('images/2.png') }}" alt="search" width="261" height="550" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img></td>
                                    </tr>
                                    <tr>
                                        <td >6.26-inch, 720x1520 pixels</td>
                                        <td >Display</td>
                                        <td >6.1-inch, 1560 x 720 pixels</td>
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
                                            <div><amp-img src="{{ URL::to('images/logo-1.jpg') }}" style="display: inline-block;" alt="paytm" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>6450</span></div>
                                            <div><amp-img src="{{ URL::to('images/logo-2.jpg') }}" alt="flipkart"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>5450</span></div>
                                            <div><amp-img src="{{ URL::to('images/logo-3.jpg') }}" alt="amazon"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>4450</span></div>
                                            <div><amp-img src="{{ URL::to('images/logo-4.jpg') }}" alt="tata"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>3450</span></div>
                                        </td>
                                        <td align="center">Price</td>
                                        <td>
                                            <div><amp-img src="{{ URL::to('images/logo-1.jpg') }}" style="display: inline-block;" alt="paytm" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>6450</span></div>
                                            <div><amp-img src="{{ URL::to('images/logo-2.jpg') }}" alt="flipkart"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>5450</span></div>
                                            <div><amp-img src="{{ URL::to('images/logo-3.jpg') }}" alt="amazon"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>4450</span></div>
                                            <div><amp-img src="{{ URL::to('images/logo-4.jpg') }}" alt="tata"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>3450</span></div>
                                        </td>
                                    </tr>
                                </tbody></table>
                            </td>
                        
                        </tr>
                    </tbody></table>
        </div>

        <!-- About Author -->
        <div class="blog-post-author d-flex">
            <div class="author-thumbnail">
                <amp-img src="{{ URL::to('images/32.jpg') }}"  alt="blog" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img>
            </div>
            <div class="author-info">
                <a href="#" class="author-name">James Smith, <span>The Author</span></a>
                <p>Donec turpis erat, scelerisque id 
euismod sit amet, fermentum vel dolor. Nulla facilisi. Sed pellen tesque
lectus et accu msan aliquam. Fusce lobortis cursus quam, id mattis 
sapien.</p>
            </div>
        </div>

        <div class="pager d-flex align-items-center justify-content-between">
            <div class="prev">
                <a href="#" class="active">&lt; previous</a>
            </div>
            <div class="next">
                <a href="#">Next &gt; </a>
            </div>
        </div>

        @include('transend_layouts.amp_layouts.related')
        @include('transend_layouts.amp_layouts.comments')
    </div>
</div>        
@endsection
@section('side_section')
    <div class="col-12">
        <div class="blog-sidebar-area">
            <!-- Latest Posts Widget -->
            <div class="latest-posts-widget mb-50">
                <!-- Single Featured Post -->
                <div class="single-blog-post small-featured-post d-flex">
                    <div class="post-thumb">
                        <a href="#"><amp-img src="{{ URL::to('images/19.jpg') }}"  alt="post" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 90px, 90px"></amp-img></a>
                    </div>
                    <div class="post-data">
                        <a href="#" class="post-catagory">Finance</a>
                        <div class="post-meta">
                            <a href="#" class="post-title">
                                <h6>Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.</h6>
                            </a>
                            <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                        </div>
                    </div>
                </div>
                <!-- Single Featured Post -->
                <div class="single-blog-post small-featured-post d-flex">
                    <div class="post-thumb">
                        <a href="#"><amp-img src="{{ URL::to('images/20.jpg') }}"  alt="search" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 90px, 90px"></amp-img></a>
                    </div>
                    <div class="post-data">
                        <a href="#" class="post-catagory">Politics</a>
                        <div class="post-meta">
                            <a href="#" class="post-title">
                                <h6>Sed a elit euismod augue semper congue sit amet ac sapien.</h6>
                            </a>
                            <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                        </div>
                    </div>
                </div>
                <!-- Single Featured Post -->
                <div class="single-blog-post small-featured-post d-flex">
                    <div class="post-thumb">
                        <a href="#"><amp-img src="{{ URL::to('images/21.jpg') }}"  alt="post" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 90px, 90px"></amp-img></a>
                    </div>
                    <div class="post-data">
                        <a href="#" class="post-catagory">Health</a>
                        <div class="post-meta">
                            <a href="#" class="post-title">
                                <h6>Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.</h6>
                            </a>
                            <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                        </div>
                    </div>
                </div>
                <!-- Single Featured Post -->
                <div class="single-blog-post small-featured-post d-flex">
                    <div class="post-thumb">
                        <a href="#"><amp-img src="{{ URL::to('images/22.jpg') }}"  alt="post" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 90px, 90px"></amp-img></a>
                    </div>
                    <div class="post-data">
                        <a href="#" class="post-catagory">Finance</a>
                        <div class="post-meta">
                            <a href="#" class="post-title">
                                <h6>Augue semper congue sit amet ac sapien. Fusce consequat.</h6>
                            </a>
                            <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                        </div>
                    </div>
                </div>
                <!-- Single Featured Post -->
                <div class="single-blog-post small-featured-post d-flex">
                    <div class="post-thumb">
                        <a href="#"><amp-img src="{{ URL::to('images/23.jpg') }}"  alt="post" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 90px, 90px"></amp-img></a>
                    </div>
                    <div class="post-data">
                        <a href="#" class="post-catagory">Travel</a>
                        <div class="post-meta">
                            <a href="#" class="post-title">
                                <h6>Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.</h6>
                            </a>
                            <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                        </div>
                    </div>
                </div>
                <!-- Single Featured Post -->
                <div class="single-blog-post small-featured-post d-flex">
                    <div class="post-thumb">
                        <a href="#"><amp-img src="{{ URL::to('images/24.jpg') }}"  alt="post" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 90px, 90px"></amp-img></a>
                    </div>
                    <div class="post-data">
                        <a href="#" class="post-catagory">Politics</a>
                        <div class="post-meta">
                            <a href="#" class="post-title">
                                <h6>Augue semper congue sit amet ac sapien. Fusce consequat.</h6>
                            </a>
                            <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Popular News Widget -->
            <div class="popular-news-widget mb-50">
                <h3>4 Most Popular News</h3>
                <!-- Single Popular Blog -->
                <div class="single-popular-post">
                    <a href="#">
                        <h6><span>1.</span> Amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales.</h6>
                    </a>
                    <p>April 14, 2018</p>
                </div>
                <!-- Single Popular Blog -->
                <div class="single-popular-post">
                    <a href="#">
                        <h6><span>2.</span> Consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer.</h6>
                    </a>
                    <p>April 14, 2018</p>
                </div>
                <!-- Single Popular Blog -->
                <div class="single-popular-post">
                    <a href="#">
                        <h6><span>3.</span> Adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo.</h6>
                    </a>
                    <p>April 14, 2018</p>
                </div>
                <!-- Single Popular Blog -->
                <div class="single-popular-post">
                    <a href="#">
                        <h6><span>4.</span> Eu metus sit amet odio sodales placer. Sed varius leo ac...</h6>
                    </a>
                    <p>April 14, 2018</p>
                </div>
            </div>
            <!-- Newsletter Widget -->
            <div class="newsletter-widget mb-50">
                <h4>Newsletter</h4>
                <p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                <form method="post" action-xhr="#" target="_blank">
                    <input type="text" name="text" placeholder="Name">
                    <input type="email" name="email" placeholder="Email">
                    <button type="submit" class="btn w-100">Subscribe</button>
                </form>
            </div>
            <!-- Latest Comments Widget -->
            <div class="latest-comments-widget">
                <h3>Latest Comments</h3>
                <!-- Single Comments -->
                <div class="single-comments d-flex">
                    <div class="comments-thumbnail mr-15">
                        <amp-img src="{{ URL::to('images/29.jpg') }}"  alt="lcomment" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 40px, 40px"></amp-img>
                    </div>
                    <div class="comments-text">
                        <a href="#">Jamie Smith <span>on</span> Facebook is offering facial recognition...</a>
                        <p>06:34 am, April 14, 2018</p>
                    </div>
                </div>
                <!-- Single Comments -->
                <div class="single-comments d-flex">
                    <div class="comments-thumbnail mr-15">
                        <amp-img src="{{ URL::to('images/30.jpg') }}"  alt="lcomment" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 40px, 40px"></amp-img>
                    </div>
                    <div class="comments-text">
                        <a href="#">Jamie Smith <span>on</span> Facebook is offering facial recognition...</a>
                        <p>06:34 am, April 14, 2018</p>
                    </div>
                </div>
                <!-- Single Comments -->
                <div class="single-comments d-flex">
                    <div class="comments-thumbnail mr-15">
                        <amp-img src="{{ URL::to('images/31.jpg') }}"   alt="lcomment" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 40px, 40px"></amp-img>
                    </div>
                    <div class="comments-text">
                        <a href="#">Jamie Smith <span>on</span> Facebook is offering facial recognition...</a>
                        <p>06:34 am, April 14, 2018</p>
                    </div>
                </div>
                <!-- Single Comments -->
                <div class="single-comments d-flex">
                    <div class="comments-thumbnail mr-15">
                        <amp-img src="{{ URL::to('images/32.jpg') }}"  alt="lcomment" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 40px, 40px"></amp-img>
                    </div>
                    <div class="comments-text">
                        <a href="#">Jamie Smith <span>on</span> Facebook is offering facial recognition...</a>
                        <p>06:34 am, April 14, 2018</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection