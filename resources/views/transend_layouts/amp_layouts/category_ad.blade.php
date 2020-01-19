<!-- ##### Hero Area Start ##### -->
    
    <div class="hero-area">
        <div class="container">
            <div class="row align-items-center">
                {{-- <div class="col-12">
                    <!-- Breaking News Widget -->
                    <div class="breaking-news-area d-flex align-items-center">
                        <div class="news-title">
                            <p>Breaking News</p>
                        </div>
                        <div id="breakingNewsTicker" class="ticker">
                            <ul>
                            <li class="tickerHook"><a href="#">Nam eu metus sitsit amet, consec!</a></li>
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
                            <li class="tickerHook"><a href="#">Welcome to Colorlib Family.</a></li>
                            </ul>
                        </div>
                    </div>
                </div> 

                <!-- Hero Add -->
                <div class="col-12">
                    <div class="hero-add">
                        <a href="#"><amp-img src="{{ URL::to('images/hero-add.gif') }}" alt="Adds" width="364" height="97" layout="responsive"></amp-img></a>
                    </div>
                </div> --}}

                <!-- breadcrumb -->
                <div class="col-12">
                    <div class="breadcrumbwrap">
                        <nav>
                            <ol class="breadcrumb">
                                @php 
                                    $url = '' 
                                @endphp
                               @foreach($data as $key => $value)
                                @if($key === 0)
                                    <li class="breadcrumb-item pt4">
                                        <a href="#"><amp-img src="{{ URL::to('images/homeicon.png') }}" width="18" height="15" layout="responsive" sizes="(min-width: 569px) 18px, 18px"></amp-img></a>
                                    </li>
                                @else
                                    <li class="breadcrumb-item {{ (count($data)-1==$key)?'active':''}}">
                                        <a href="#">{{ strtoupper($value) }}</a>
                                    </li>
                                @endif
                                @endforeach
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Hero Area End ##### -->