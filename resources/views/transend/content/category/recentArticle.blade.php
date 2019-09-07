
@foreach($recentArticles as $recent)    
    <div class="latest-posts-widget mb-50">
        <div class="single-blog-post small-featured-post d-flex">
            <div class="post-thumb">
                <a href="{{ URL::to( 'hi/' . $recent->content['content_type_name'] . '/' . $recent->category['url'] . '/' . $recent->alias . '-' . $recent->id) }}"><img src="{{ URL::to('/')}}/upload/{{ $recent->image  }}" alt=""></a>
            </div>
            <div class="post-data"> 
                <a href="{{ URL::to( 'hi/' . $recent->content['content_type_name'] . '/' . $recent->category['url'] . '/' . $recent->alias . '-' . $recent->id) }}" class="post-catagory">{{ $recent->title }}</a>
                <div class="post-meta">
                    <a href="{{ URL::to( $recent->category['url'] . '/' . $recent->content['content_type_name'] . '/' . $recent->alias . '-' . $recent->id) }}" class="post-title">
                        <h6>{{ str_limit(strip_tags($recent->description),50) }}</h6>
                    </a>
                    <p class="post-date"><span>{{ $recent->created_at }}</span> | </p>
                </div>
             </div>
        </div>
    </div>
@endforeach 