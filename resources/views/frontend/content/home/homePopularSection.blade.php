    <div class="editors-pick-post-area section-padding-80-50">
        <div class="container">
            <div class="row">
                <!-- Editors Pick -->
                <div class="col-12 col-md-7 col-lg-9">
                    <div class="section-heading">
                        <h6>Popular News</h6>
                    </div>

                    <div class="row">

                        <!-- Single Post -->
                    @foreach($thirdModules as $thirdModule)
                        <div class="col-12 col-lg-4">
                            <div class="single-blog-post">
                                <div class="post-thumb">
                                    <a href="#"><img src="{{ URL::to('/')}}/uploads/{{ $thirdModule['image'] }}" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="#" class="post-title">
                                        <h6>{{ $thirdModule['title'] }}</h6>
                                    </a>
                                    <div class="post-meta">
                                        <div class="post-date"><a href="#">{{ $thirdModule['date'] }}</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach    
                    </div>
                </div>

                <!-- World News -->
                <div class="col-12 col-md-5 col-lg-3">
                    <!-- Single Featured Post -->
                    <div class="section-heading">
                        <h6>Top Ten</h6>
                    </div>
                    {{-- @foreach($thirdModules as $thirdModule) --}}
                        <div class="single-blog-post small-featured-post d-flex">
                            <div class="post-thumb">
                                <a href="#"><img src="{{ URL::to('/')}}/frontend/img/bg-img/19.jpg" alt=""></a>
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
                    {{-- @endforeach --}}
                </div>
            </div>
        </div>
    </div>