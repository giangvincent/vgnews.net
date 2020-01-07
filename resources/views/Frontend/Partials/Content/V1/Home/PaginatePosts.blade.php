<!-- TODO Paginate all News the rest of news  -->
<!-- Worldwide News -->
<section class="section">
  <div class="title-wrap title-wrap--line">
    <h3 class="section-title" id="listAll">Worldwide</h3>
    <a href="#" class="all-posts-url">View All</a>
  </div>

  @foreach ($postsWithPagination as $news)
  <article class="entry card post-list">
    <div class="entry__img-holder post-list__img-holder card__img-holder"
      style="background-image: url({{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }})">
      <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}" class="thumb-url"></a>
      <img src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}"
        alt="{{ $news->slug }}" class="entry__img d-none lazyload">
      @foreach ($news->categories()->get() as $cat)
      <a href="{{$cat->slug}}"
        class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--blue">{{$cat->title}}</a>
      @endforeach
      
    </div>

    <div class="entry__body post-list__body card__body">
      <div class="entry__header">
        <h2 class="entry__title">
          <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">{{ $news->title }}</a>
        </h2>
        <ul class="entry__meta">
          <li class="entry__meta-author">
            <span>by</span>
            <a href="#">DeoThemes</a>
          </li>
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
  @endforeach

</section> <!-- end worldwide news -->

<!-- Pagination -->
{{-- <nav class="pagination">
          <span class="pagination__page pagination__page--current">1</span>
          <a href="#" class="pagination__page">2</a>
          <a href="#" class="pagination__page">3</a>
          <a href="#" class="pagination__page">4</a>
          <a href="#" class="pagination__page pagination__icon pagination__page--next"><i class="ui-arrow-right"></i></a>
        </nav> --}}

{{ $postsWithPagination->render() }}