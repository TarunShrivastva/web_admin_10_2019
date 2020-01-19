@foreach($trendingArticles as $key => $trendingArticle)
    <div class="single-blog-post small-featured-post d-flex">
        <div class="post-thumb">
            <a href="{{ URL::to( 'hi/amp/' . $trendingArticle->content['content_type_name'] . '/' . $trendingArticle->category['url'] . '/' . $trendingArticle->alias . '-' . $trendingArticle->id) }}"><amp-img src="{{ URL::to('/')}}/upload/{{ $trendingArticle->image }}"  alt="post" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 90px, 90px"></amp-img></a>
        </div>
        <div class="post-data">
            <a href="#" class="post-catagory">Finance</a>
            <div class="post-meta">
                <a href="{{ URL::to( 'hi/amp/' . $trendingArticle->content['content_type_name'] . '/' . $trendingArticle->category['url'] . '/' . $trendingArticle->alias . '-' . $trendingArticle->id) }}" class="post-title">
                    <h6>{{ strip_tags($trendingArticle->title) }}</h6>
                </a>
                <p class="post-date"><span>7:00 AM</span> | <span>April 14</span></p>
            </div>
        </div>
    </div>
@endforeach