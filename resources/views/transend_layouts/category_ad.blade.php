{{-- <div class="hero-area"> --}}
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-8">
                    <ol class = "breadcrumb breadcrumb-background">
                       @php 
                        $url = '' 
                        @endphp
                       @foreach($data as $key => $value)
                       <li><a href = "{{ URL::to('') }}/{{ strtolower($value) == 'home'? $url .= 'hi': $url .= '/' . strtolower($value) }}">{{ strtoupper($value) }}</a></li>
                       @endforeach
                    </ol>
                    <!-- Breaking News Widget -->
                   {{--  <div class="breaking-news-area d-flex align-items-center">
                        <div class="news-title">
                            <p>Breaking News</p>
                        </div>
                        <div id="breakingNewsTicker" class="ticker">
                            <ul>
                                <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                <li><a href="#">Welcome to Colorlib Family.</a></li>
                                <li><a href="#">Nam eu metus sitsit amet, consec!</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Breaking News Widget -->
                    <div class="breaking-news-area d-flex align-items-center mt-15">
                        <div class="news-title title2">
                            <p>International</p>
                        </div>
                        <div id="internationalTicker" class="ticker">
                            <ul>
                                <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                <li><a href="#">Welcome to Colorlib Family.</a></li>
                                <li><a href="#">Nam eu metus sitsit amet, consec!</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Hero Add -->
                <div class="col-12 col-lg-4">
                    <div class="hero-add">
                        <a href="#"><img src="{{ URL::to('frontend/img/bg-img/hero-add.gif')}}" alt=""></a>
                    </div>
                </div> --}}
            
            </div>
        </div>
    </div>
{{-- </div>     --}}