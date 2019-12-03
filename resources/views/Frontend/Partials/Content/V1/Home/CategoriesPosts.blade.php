<!-- Posts from categories -->
<section class="section mb-0">
  <div class="row">
    @foreach($postsByCat as $postsCatKey => $postsCat)
    <!-- Technology -->
    <div class="col-md-6">
      <div class="title-wrap title-wrap--line">
        <h3 class="section-title">{{ $postsCatKey }}</h3>
      </div>
      <div class="row">
        @foreach($postsCat as $news)
        @if($loop->index == 0)
        <div class="col-lg-6">
          <article class="entry thumb thumb--size-2">
            <div class="entry__img-holder thumb__img-holder"
              style="background-image: url('{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}');">
              <div class="bottom-gradient"></div>
              <div class="thumb-text-holder thumb-text-holder--1">
                <h2 class="thumb-entry-title">
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
              </div>
              <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}"
                class="thumb-url"></a>
            </div>
          </article>
        </div>
        @endif
        @endforeach
        <div class="col-lg-6">
          <ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
            @foreach($postsCat as $news)
            @if($loop->index > 0)
            <li class="post-list-small__item">
              <article class="post-list-small__entry">
                <div class="post-list-small__body">
                  <h3 class="post-list-small__entry-title">
                    <a
                      href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">{{ $news->title }}</a>
                  </h3>
                </div>
              </article>
            </li>
            @endif
            @endforeach

          </ul>
        </div>
      </div>
    </div> <!-- end technology -->
    @endforeach
  </div>
</section> <!-- end posts from categories -->