<!-- Featured Posts Grid -->      
    <section class="featured-posts-grid">
      <div class="container">
        <div class="row row-8">
          <?php $feature_num = 0; ?>
          @foreach($feature as $news)
            @if($feature_num == 0)
              <div class="col-lg-6">

                <!-- Large post -->
                <div class="featured-posts-grid__item featured-posts-grid__item--lg">
                  <article class="entry card featured-posts-grid__entry">
                    <div class="entry__img-holder card__img-holder">
                      <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">
                        <img src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}" alt="{{ $news->slug }}" class="entry__img">
                      </a>
                      <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">Lifestyle</a>
                    </div>

                    <div class="entry__body card__body">   
                      <h2 class="entry__title">
                        <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">{{ $news->title }}</a>
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
                  </article>
                </div> <!-- end large post -->
              </div> <!-- end col for big post feature -->  
            @else 

              @if($feature_num == 1)
              <div class="col-lg-6">
              @endif
                @if($feature_num % 2 == 0)
                <!-- Small post -->
                <div class="featured-posts-grid__item featured-posts-grid__item--sm">
                  <article class="entry card post-list featured-posts-grid__entry">
                    <div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url({{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }})">
                      <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}" class="thumb-url"></a>
                      <img src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}" alt="" class="entry__img d-none">
                      <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">World</a>
                    </div>

                    <div class="entry__body post-list__body card__body">  
                      <h2 class="entry__title">
                        <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">{{ $news->title }}</a>
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
                  </article>
                </div> <!-- end post -->
                @else 
                <!-- Small post -->
                <div class="featured-posts-grid__item featured-posts-grid__item--sm">
                  <article class="entry card post-list featured-posts-grid__entry">
                    <div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url({{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }})">
                      <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}" class="thumb-url"></a>
                      <img src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}" alt="{{ $news->slug }}" class="entry__img d-none">
                      <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">Fashion</a>
                    </div>

                    <div class="entry__body post-list__body card__body">  
                      <h2 class="entry__title">
                        <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">{{ $news->title }}</a>
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
                  </article>
                </div> <!-- end post -->
                @endif
                <!-- Small post -->
                <!-- <div class="featured-posts-grid__item featured-posts-grid__item--sm">
                   <article class="entry card post-list featured-posts-grid__entry">
                     <div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(img/content/hero/hero_post_3.jpg)">
                       <a href="single-post.html" class="thumb-url"></a>
                       <img src="img/content/hero/hero_post_3.jpg" alt="" class="entry__img d-none">
                       <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--blue">Business</a>
                     </div>
                 
                     <div class="entry__body post-list__body card__body">  
                       <h2 class="entry__title">
                         <a href="single-post.html">These Are the 20 Best Places to Work in 2018</a>
                       </h2>
                       <ul class="entry__meta">
                         <li class="entry__meta-author">
                           <span>by</span>
                           <a href="#">DeoThemes</a>
                         </li>
                         <li class="entry__meta-date">
                           Jan 21, 2018
                         </li>              
                       </ul>
                     </div>
                   </article>
                 </div> --> <!-- end post -->
              @if($feature_num == 3)
              </div> <!-- end col for small post feature -->
              @endif
            @endif
            <?php $feature_num++; ?>
          @endforeach
                  

        </div>
      </div>
    </section> <!-- end featured posts grid -->