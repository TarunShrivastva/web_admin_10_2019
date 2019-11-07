    <div class="popular-news-area section-padding-80-50">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-8">
                    <div class="section-heading">
                        <h6>{{ 'Latest News' }}</h6>
                    </div>

                    <div class="row">

                        <!-- Single Post -->
                        @foreach($secondModules as $secondModule)
                        {{-- {{ dd($secondModule) }} --}}
                        <div class="col-12 col-md-6">
                            <div class="single-blog-post style-3">
                                <div class="post-thumb">
                                    <a href="#"><img src="{{ URL::to('/')}}/upload/{{ $secondModule['image'] }}" alt=""></a>
                                </div>
                                <div class="post-data">
                                    <a href="{{ URL::to('/').'/hi/'.$secondModule['content'] }}" class="post-catagory">{{ $secondModule['content'] }}</a>
                                    <a href="{{ URL::to('/').'/hi/'.$secondModule['content'].'/'.$secondModule['category'].'/'.$secondModule['alias'] .'-'.$secondModule['article_id']}}" class="post-title">
                                        <h6>{{ str_limit(strip_tags($secondModule['description']),50) }}</h6>
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

                <div class="col-12 col-lg-4">
                    <div class="section-heading">
                        <h6>{{ 'Info' }}</h6>
                    </div>
                   {!! $howToArticles !!}

                    <!-- Newsletter Widget -->
                    <div class="newsletter-widget mb-50">
                        <h4>{{ 'Newsletter' }}</h4>
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
        </div>
    </div>