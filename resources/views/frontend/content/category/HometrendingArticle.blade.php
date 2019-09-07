    @foreach($trendingArticles as $trendingArticle)
        <div class="single-blog-post small-featured-post d-flex">
            <div class="post-thumb">
                <a href="#"><img src="{{ URL::to('/')}}/upload/{{ $trendingArticle->image }}" alt=""></a>
            </div>
            <div class="post-data">
                <a href="#" class="post-catagory">{{ $trendingArticle->category['name'] }}</a>
                <div class="post-meta">
                    <a href="#" class="post-title">
                    <h6>{{ $trendingArticle->title }}</h6>
                    </a>
                    <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                </div>
            </div>
        </div>
    @endforeach
