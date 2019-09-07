@foreach($trendingArticles as $key => $trending)
    <div class="single-popular-post">
        <a href="{{ URL::to( 'hi/' . $trending->content['content_type_name'] . '/' . $trending->category['url'] . '/' . $trending->alias . '-' . $trending->id) }}">
            <h6><span>{{ $key+1 }}.</span> {{ str_limit(strip_tags($trending->description),50) }}</h6>
        </a>
        <p>{{ $trending->created_at }}</p>
    </div>
@endforeach