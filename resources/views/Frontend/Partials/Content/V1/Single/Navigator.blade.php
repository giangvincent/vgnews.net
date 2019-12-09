<!-- Prev / Next Post -->
<nav class="entry-navigation">
  <div class="clearfix">
    <div class="entry-navigation--left">
      <i class="ui-arrow-left"></i>
      <span class="entry-navigation__label">Previous Post</span>
      <div class="entry-navigation__link">
        <a href="{{ route('front.detailPage' , ['slug' => $previousPost->slug, 'id' => $previousPost->id]) }}" rel="next"> {{$previousPost->title}} </a>
      </div>
    </div>
    <div class="entry-navigation--right">
      <span class="entry-navigation__label">Next Post</span>
      <i class="ui-arrow-right"></i>
      <div class="entry-navigation__link">
        <a href="{{ route('front.detailPage' , ['slug' => $nextPost->slug, 'id' => $nextPost->id]) }}" rel="prev">{{$nextPost->title}}</a>
      </div>
    </div>
  </div>
</nav>