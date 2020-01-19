<h3>{{ count($recentArticles) }} Most Popular News</h3>
@foreach($recentArticles as $key => $recentArticle)
	<div class="single-popular-post">
		<a href="{{ URL::to( 'hi/amp/' . $recentArticle->content['content_type_name'] . '/' . $recentArticle->category['url'] . '/' . $recentArticle->alias . '-' . $recentArticle->id) }}">
		    <h6><span>{{ $key + 1 }}.</span> {{ strip_tags($recentArticle->title) }}</h6>
		</a>
		<p>April 14, 2018</p>
	</div>
@endforeach