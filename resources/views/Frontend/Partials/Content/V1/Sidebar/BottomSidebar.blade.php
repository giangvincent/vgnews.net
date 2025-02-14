<!-- Sidebar 1 -->
<aside class="col-lg-4 sidebar sidebar--1 sidebar--right">

  <!-- Widget Ad 300 -->
  {{-- <aside class="widget widget_media_image">
          <a href="#">
            <img src="img/content/placeholder_336.jpg" alt="">
          </a>
        </aside>  --}}
  <!-- end widget ad 300 -->

  <!-- TODO Categories Widgets sidebar -->
  @include('Frontend.Partials.Content.V1.Sidebar.Categories')

  <!-- Widget Recommended (Rating) -->
  <aside class="widget widget-rating-posts">
    <h4 class="widget-title">Recommended</h4>
    @foreach($recommended as $news)
    <article class="entry">
      <div class="entry__img-holder">
        <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">
          <div class="thumb-container thumb-60">
            <img
              data-src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}"
              src="img/empty.png" class="entry__img lazyload" alt="">
          </div>
        </a>
      </div>

      <div class="entry__body">
        <div class="entry__header">

          <h2 class="entry__title">
            <a
              href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">{{ $news->title }}</a>
          </h2>
          <ul class="entry__meta">
            <!-- <li class="entry__meta-author">
                    <span>by</span>
                    <a href="#">DeoThemes</a>
                  </li> -->
            <li class="entry__meta-date">
              {{ date("M d, Y", strtotime($news->updated_at)) }}
            </li>
          </ul>
          <ul class="entry__meta">
            <li class="entry__meta-rating">
              <i class="ui-star"></i>
              <!--
                      --><i class="ui-star"></i>
              <!--
                      --><i class="ui-star"></i>
              <!--
                      --><i class="ui-star"></i>
              <!--
                    --><i class="ui-star-empty"></i>
            </li>
          </ul>
        </div>
      </div>
    </article>
    @endforeach
  </aside> <!-- end widget recommended (rating) -->
</aside> <!-- end sidebar 1 -->