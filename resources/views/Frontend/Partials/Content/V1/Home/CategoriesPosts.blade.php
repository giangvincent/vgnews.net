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
            <div class="col-lg-6">
              <article class="entry thumb thumb--size-2">
                <div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/thumb/thumb_post_1.jpg');">
                  <div class="bottom-gradient"></div>
                  <div class="thumb-text-holder thumb-text-holder--1">   
                    <h2 class="thumb-entry-title">
                      <a href="single-post.html">Gov’t Toughens Rules to Ensure 3rd Telco Player Doesn’t Slack Off</a>
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
                  <a href="single-post.html" class="thumb-url"></a>
                </div>
              </article>
            </div>
            <div class="col-lg-6">
              <ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
                <li class="post-list-small__item">
                  <article class="post-list-small__entry">
                    <div class="post-list-small__body">
                      <h3 class="post-list-small__entry-title">
                        <a href="single-post.html">Need a Website for Your Business? Google Can Help</a>
                      </h3>
                    </div>                  
                  </article>
                </li>
                <li class="post-list-small__item">
                  <article class="post-list-small__entry">
                    <div class="post-list-small__body">
                      <h3 class="post-list-small__entry-title">
                        <a href="single-post.html">Here Are Ways You Can Earn From the Sharing Economy</a>
                      </h3>
                    </div>                  
                  </article>
                </li>
                <li class="post-list-small__item">
                  <article class="post-list-small__entry">
                    <div class="post-list-small__body">
                      <h3 class="post-list-small__entry-title">
                        <a href="single-post.html">19 Crazy Facts You Probably Didn't Know About Google</a>
                      </h3>
                    </div>                  
                  </article>
                </li>
                <li class="post-list-small__item">
                  <article class="post-list-small__entry">
                    <div class="post-list-small__body">
                      <h3 class="post-list-small__entry-title">
                        <a href="single-post.html">What Household Chores Would Filipinos Love to Assign to Robots?</a>
                      </h3>
                    </div>                  
                  </article>
                </li>
              </ul>
            </div>
          </div>            
        </div> <!-- end technology -->
        @endforeach
      </div>                
    </section> <!-- end posts from categories -->