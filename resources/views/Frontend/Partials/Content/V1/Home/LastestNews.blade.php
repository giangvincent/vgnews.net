<!-- Latest News -->
<section class="section tab-post mb-16">
  <div class="title-wrap title-wrap--line">
    <h3 class="section-title">Latest News</h3>

    <div class="tabs tab-post__tabs">
      <ul class="tabs__list">

        @foreach($catsNews as $latestByCat)
        <li class="tabs__item {{ ($loop->index == 0) ? 'tabs__item--active' : '' }} ">
          <a href="#tab-{{ $latestByCat['cat']->slug }}" class="tabs__trigger">{{ $latestByCat['cat']->title }}</a>
        </li>
        @endforeach

      </ul> <!-- end tabs -->
    </div>
  </div>

  <!-- tab content -->
  <div class="tabs__content tabs__content-trigger tab-post__tabs-content">
    @foreach($catsNews as $PostByCat)
    <div class="tabs__content-pane {{ ($loop->index == 0) ? 'tabs__content-pane--active' : '' }}"
      id="tab-{{ $PostByCat['cat']->slug }}">
      <div class="row card-row">
        @foreach($PostByCat['post'] as $news)
        <div class="col-md-6">
          <article class="entry card">
            <div class="entry__img-holder card__img-holder">
              <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">
                <div class="thumb-container thumb-70">
                  <img
                    data-src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}"
                    src="img/empty.png" class="entry__img lazyload" alt="{{ $news->slug }}" />
                </div>
              </a>
              <a href="#"
                class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">{{ $PostByCat['cat']->title }}</a>
            </div>

            <div class="entry__body card__body">
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
              </div>
              <div class="entry__excerpt">
                <p>{{ $news->description }}</p>
              </div>
            </div>
          </article>
        </div>
        @endforeach
      </div>
    </div> <!-- end pane 1 -->
    @endforeach

  </div> <!-- end tab content -->
</section> <!-- end latest news -->