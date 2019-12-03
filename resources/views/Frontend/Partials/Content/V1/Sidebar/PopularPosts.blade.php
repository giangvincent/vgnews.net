<!-- Widget Popular Posts -->
<aside class="widget widget-popular-posts">
  <h4 class="widget-title">Popular Posts</h4>
  <ul class="post-list-small">
    @foreach($popular as $news)
    <li class="post-list-small__item">
      <article class="post-list-small__entry clearfix">
        <div class="post-list-small__img-holder">
          <div class="thumb-container thumb-100">
            <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">
              <img
                data-src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}"
                src="img/empty.png" alt="{{ $news->slug }}" class="post-list-small__img--rounded lazyload">
            </a>
          </div>
        </div>
        <div class="post-list-small__body">
          <h3 class="post-list-small__entry-title">
            <a
              href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">{{ $news->title }}</a>
          </h3>
          <ul class="entry__meta">
            <!-- <li class="entry__meta-author">
                    <span>by</span>
                    <a href="#">DeoThemes</a>
                  </li> -->
            <li class="entry__meta-date">
              {{ date("M d, Y", strtotime($news->updated_at)) }}
            </li>
          </ul>
        </div>
      </article>
    </li>
    @endforeach
  </ul>
</aside> <!-- end widget popular posts -->