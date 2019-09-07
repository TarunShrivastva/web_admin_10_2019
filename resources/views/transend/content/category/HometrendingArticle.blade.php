    @foreach($trendingArticles as $trendingArticle)
        <div class="single-blog-post small-featured-post d-flex">
            <div class="post-thumb">
                <a href="{{ URL::to('/').'/hi/'.$trendingArticle['content']->content_type_name.'/'.$trendingArticle['category']->name.'/'.$trendingArticle['alias'].'-'.$trendingArticle['id'] }}"><img src="{{ URL::to('/')}}/upload/{{ $trendingArticle->image }}" alt=""></a>
            </div>
            <div class="post-data">
                <a href="{{ URL::to('/').'/hi/'.$trendingArticle['content']->content_type_name.'/'.$trendingArticle['category']->name }}" class="post-catagory">{{ $trendingArticle->category['name'] }}</a>
                <div class="post-meta">
                    <a href="{{ URL::to('/').'/hi/'.$trendingArticle['content']->content_type_name.'/'.$trendingArticle['category']->name.'/'.$trendingArticle['alias'].'-'.$trendingArticle['id'] }}" class="post-title">
                    <h6>{{ $trendingArticle->title }}</h6>
                    </a>
                    <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
                </div>
            </div>
        </div>
    @endforeach
