    <div class="editors-pick-post-area section-padding-80-50">
        <div class="container">
            <div class="row">
                <!-- Editors Pick -->
                <div class="col-12 col-md-7 col-lg-9">
                    <div class="section-heading">
                        <h6>{{ 'Popular News' }}</h6>
                    </div>

                    <div class="row">

                        <!-- Single Post -->
                    @foreach($thirdModules as $thirdModule)
                        <div class="col-12 col-lg-4">
                            <div class="single-blog-post">
                                <div class="post-thumb">
                                    <a href="#"><img src="{{ URL::to('/')}}/upload/{{ $thirdModule['image'] }}" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="{{ URL::to('/').'/hi/'.$thirdModule['content'].'/'.$thirdModule['category'].'/'.$thirdModule['alias'] .'-'.$thirdModule['article_id']}}" class="post-title">
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
                        <h6>{{ 'Top Ten' }}</h6>
                    </div>
                    {{-- @foreach($thirdModules as $thirdModule) --}}
                        
                    {{-- @endforeach --}}
                </div>
            </div>
        </div>
    </div>