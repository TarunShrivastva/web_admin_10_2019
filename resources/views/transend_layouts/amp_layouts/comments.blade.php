<!-- Comment Area Start -->
        <div class="comment_area clearfix">
            <h5 class="title">{{ count($articles->comments) }} Comments</h5>
            <ol>
                @foreach($articles->comments as $comment)
                <!-- Single Comment Area -->
                <li class="single_comment_area">
                    <!-- Comment Content -->
                    <div class="comment-content d-flex">
                        <!-- Comment Author -->
                        <div class="comment-author">
                            <amp-img src="{{ URL::to('images/30.jpg') }}"  alt="comment-author" width="100" height="100" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img>
                        </div>
                        <!-- Comment Meta -->
                        <div class="comment-meta">
                            <a href="#" class="post-author">{{ $comment->user->name }}</a>
                            <a href="#" class="post-date">{{ ($comment->created_at >= $comment->updated_at)?date('d-M-y', strtotime($comment->created_at)) : date('d-M-y', strtotime($comment->updated_at)) }}</a>
                            <p>{{ $comment->comment }}</p>
                        </div>
                    </div>
                </li>
                @endforeach
            </ol>
        </div{{-- >
@if (!(Auth::check()))
    <div class="post-a-comment-area section-padding-80-0">
        <h4>Login For a comment</h4>
        <div class="contact-form-area">
            <form method="post" action-xhr="{{ route('login') }}" target="_top">
                <div class="row">
                    {{ csrf_field() }}
                    <div class="col-12">
                        <input type="text" class="form-control" id="email" placeholder="email*" value="{{ old('email') }}" required="required">
                        @if ($errors->has('email'))
                            <span class="help-block">
                                <p style="color:red">{{ $errors->first('email') }}</p>
                            </span>
                        @endif
                    </div>
                    <div class="col-12">
                        <input type="password" class="form-control" id="password" placeholder="password" name="password" required>
                        @if ($errors->has('password'))
                            <span class="help-block">
                                <p style="color:red">{{ $errors->first('password') }}</p>
                            </span>
                        @endif
                    </div>
                    <div class="col-12 text-center">
                        <button class="btn newspaper-btn mt-30 w-100" type="submit">Login To Comment</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@else
    <div class="post-a-comment-area section-padding-80-0">
        <h4>Leave a comment</h4>
        <div class="contact-form-area">
            <form method="post" action-xhr="{{ route('add_comment',['article_id' => $articles->id]) }}" target="_blank">
                <div class="row">
                    {{ csrf_field() }}
                    <div class="col-12">
                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                    </div>
                    <div class="col-12 text-center">
                        <button class="btn newspaper-btn mt-30 w-100" type="submit">Add Comment</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endif --}}