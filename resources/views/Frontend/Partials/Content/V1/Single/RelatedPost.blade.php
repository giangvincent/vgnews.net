<!-- Related Posts -->
<section class="section related-posts mt-40 mb-0">
  <div class="title-wrap title-wrap--line title-wrap--pr">
    <h3 class="section-title">Related Articles</h3>
  </div>

  <!-- Slider -->
  <div id="owl-posts-3-items" class="owl-carousel owl-theme owl-carousel--arrows-outside">
    @foreach ($relatedPosts as $news)
    <article class="entry thumb thumb--size-1">
      <div class="entry__img-holder thumb__img-holder"
        style="background-image: url('{{ (filter_var($news['media'], FILTER_VALIDATE_URL)) ? $news['media'] : 'upload/'.$news['media'] }}');">
        <div class="bottom-gradient"></div>
        <div class="thumb-text-holder">
          <h2 class="thumb-entry-title">
            <a href="{{ route('front.detailPage' , ['slug' => $news['slug'], 'id' => $news['id']]) }}">{{$news['title']}}</a>
          </h2>
        </div>
        <a href="{{ route('front.detailPage' , ['slug' => $news['slug'], 'id' => $news['id']]) }}" class="thumb-url"></a>
      </div>
    </article>
    @endforeach


  </div> <!-- end slider -->

</section> <!-- end related posts -->