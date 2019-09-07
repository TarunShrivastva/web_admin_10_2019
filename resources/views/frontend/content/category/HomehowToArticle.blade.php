 <!-- Popular News Widget -->
    <div class="popular-news-widget mb-30">
        <h3> How To News</h3>

        <!-- Single Popular Blog -->
        @foreach($howToArticles as $key => $howToArticle)
        <div class="single-popular-post">
            <a href="{{ URL::to('/').'/'.$howToArticle['content']->content_type_name.'/'.$howToArticle['category']->name.'/'.$howToArticle['alias'].'-'.$howToArticle['id'] }}">
                <h6><span>{{ $key +1 }}.</span> {{ str_limit(strip_tags($howToArticle['title']),50) }}</h6>
            </a>
            <p>{{ $howToArticle['created_at'] }}</p>
        </div>
        @endforeach
    </div>