    <div class="featured-post-area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                    
                    <div class="row">
                        <!-- Single Post -->
                    @foreach($firstModules as $firstModule)
                        <div class="col-12 col-md-6">
                            <div class="single-blog-post style-3">
                                <div class="post-thumb">
                                    <a href="#"><img src="{{ URL::to('/')}}/upload/{{ $firstModule['image'] }}" alt=""></a>
                                </div>
                                <div class="post-data">
                                    {{-- {{ URL::to('/').'/hi/'.$trendingArticle['content']->content_type_name.'/'.$trendingArticle['category']->name }} --}}
                                    {{-- {{ dd($firstModule['content'], $firstModule['category'], $firstModule['alias'], $firstModule['id'])}} --}}
                                    <a href="{{ URL::to('/').'/hi/'.$firstModule['content'].'/'.$firstModule['category'].'/'.$firstModule['alias'] .'-'.$firstModule['id']}}" class="post-catagory">{{ $firstModule['title'] }}</a>
                                    <a href="{{ URL::to('/').'/hi/'.$firstModule['content'].'/'.$firstModule['category'].'/'.$firstModule['alias'] .'-'.$firstModule['id']}}" class="post-title">
                                        <h6>{{ str_limit(strip_tags($firstModule['description']),50) }}</h6>
                                    </a>
                                    <div class="post-meta d-flex align-items-center">
                                        <a href="#" class="post-like"><img src="{{ URL::to('/')}}/frontend/img/core-img/like.png" alt=""> <span>392</span></a>
                                        <a href="#" class="post-comment"><img src="{{ URL::to('/')}}/frontend/img/core-img/chat.png" alt=""> <span>10</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    {{-- <div class="section-heading">Info</div> --}}
                    <!-- Single Featured Post -->
                        
                   {!! $trendingArticles !!}                   
                </div>

            </div>
        </div>
    </div>
   