<!-- Trending Now -->
<div class="container">
  <div class="trending-now">
    <span class="trending-now__label">
      <i class="ui-flash"></i>
    {{ trans('homepage.newsflash') }}</span>
    <div class="newsticker">
      <ul class="newsticker__list">
        @foreach($newsflash as $news)
        <li class="newsticker__item">
          <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}" class="newsticker__item-url">{{ $news->title }}</a>
        </li>
        @endforeach
             
      </ul>
    </div>
    <div class="newsticker-buttons">
      <button class="newsticker-button newsticker-button--prev" id="newsticker-button--prev" aria-label="next article"><i class="ui-arrow-left"></i></button>
      <button class="newsticker-button newsticker-button--next" id="newsticker-button--next" aria-label="previous article"><i class="ui-arrow-right"></i></button>
    </div>
  </div>
</div>