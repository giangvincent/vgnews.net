<!-- // TODO : complete navigation menu , infinite tree menu  -->
<!-- Navigation -->
    <header class="nav">

      <div class="nav__holder nav--sticky">
        <div class="container relative">
          <div class="flex-parent">

            <!-- Side Menu Button -->
            <button class="nav-icon-toggle" id="nav-icon-toggle" aria-label="Open side menu">
              <span class="nav-icon-toggle__box">
                <span class="nav-icon-toggle__inner"></span>
              </span>
            </button> 

            <!-- Logo -->
            <a href="/" class="logo">
              <img class="logo__img" src="img/logo_default.png" srcset="img/logo_default.png 1x, img/logo_default@2x.png 2x" alt="logo">
            </a>

            <!-- Nav-wrap -->
            <nav class="flex-child nav__wrap d-none d-lg-block">              
              <ul class="nav__menu">
                @foreach($navs as $nav)
                <li class="{{ count($nav['menu']) > 0 ? 'nav__dropdown' : '' }}">
                  <a href="{{ $nav['url'] }}">{{ $nav['name_display'] }}</a>
                  @if(count($nav['menu']) > 0)
                    @if($nav['type'] == 'mega')
                      @include('Frontend.Layouts.NavbarChildMega')
                    @else
                      @include('Frontend.Layouts.NavbarChild')
                    @endif
                  @endif
                </li>
                @endforeach
                <!-- <li class="nav__dropdown active">
                  <a href="index.html">Home</a>
                  <ul class="nav__dropdown-menu">
                    <li><a href="index.html">Home Default</a></li>
                    <li><a href="index-politics.html">Home Politics</a></li>
                    <li><a href="index-fashion.html">Home Fashion</a></li>
                    <li><a href="index-games.html">Home Games</a></li>
                    <li><a href="index-videos.html">Home Videos</a></li>
                    <li><a href="index-music.html">Home Music</a></li>
                  </ul>
                </li>
                
                <li class="nav__dropdown">
                  <a href="#">Posts</a>
                  <ul class="nav__dropdown-menu nav__megamenu">
                    <li>
                      <div class="nav__megamenu-wrap">
                        <div class="row">
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_1.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">world</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">Follow These Smartphone Habits of Successful Entrepreneurs</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_2.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">fashion</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">3 Things You Can Do to Get Your Customers Talking About Your Business</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_3.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--blue">business</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">Lose These 12 Bad Habits If You're Serious About Becoming a Millionaire</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_4.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">lifestyle</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">10 Horrible Habits You're Doing Right Now That Are Draining Your Energy</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                        </div>
                        <div class="row">
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_1.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">world</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">Follow These Smartphone Habits of Successful Entrepreneurs</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_2.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">fashion</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">3 Things You Can Do to Get Your Customers Talking About Your Business</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_3.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--blue">business</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">Lose These 12 Bad Habits If You're Serious About Becoming a Millionaire</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                          <div class="col nav__megamenu-item">
                            <article class="entry">
                              <div class="entry__img-holder">
                                <a href="single-post.html">
                                  <img src="img/content/grid/grid_post_4.jpg" alt="" class="entry__img">
                                </a>
                                <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">lifestyle</a>
                              </div>
                
                              <div class="entry__body">   
                                <h2 class="entry__title">
                                  <a href="single-post.html">10 Horrible Habits You're Doing Right Now That Are Draining Your Energy</a>
                                </h2>
                              </div>
                            </article>
                          </div>
                
                        </div>
                      </div>
                    </li>
                  </ul> end megamenu
                </li>
                
                <li class="nav__dropdown">
                  <a href="#">Pages</a>
                  <ul class="nav__dropdown-menu">
                    <li><a href="about.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="search-results.html">Search Results</a></li>
                    <li><a href="categories.html">Categories</a></li>
                    <li><a href="404.html">404</a></li>
                  </ul>
                </li>                
                
                <li class="nav__dropdown">
                  <a href="#">Features</a>
                  <ul class="nav__dropdown-menu">
                    <li><a href="shortcodes.html">Shortcodes</a></li>
                    <li class="nav__dropdown">
                      <a href="#">Single Post</a>
                      <ul class="nav__dropdown-menu">
                        <li><a href="single-post.html">Style 1</a></li>
                        <li><a href="single-post-politics.html">Style 2</a></li>
                        <li><a href="single-post-fashion.html">Style 3</a></li>
                        <li><a href="single-post-games.html">Style 4</a></li>
                        <li><a href="single-post-videos.html">Style 5</a></li>
                        <li><a href="single-post-music.html">Style 6</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                
                <li>
                  <a href="#">Purchase</a>
                </li>
                 -->

              </ul> <!-- end menu -->
            </nav> <!-- end nav-wrap -->

            <!-- Nav Right -->
            <div class="nav__right">

              <!-- Search -->
              <div class="nav__right-item nav__search">
                <a href="#" class="nav__search-trigger" id="nav__search-trigger">
                  <i class="ui-search nav__search-trigger-icon"></i>
                </a>
                <div class="nav__search-box" id="nav__search-box">
                  <div class="nav__search-form" id="form-searching">
                    <input type="text" placeholder="Search an article" class="nav__search-input">
                    <button type="button" class="search-button btn btn-lg btn-color btn-button">
                      <i class="ui-search nav__search-icon"></i>
                    </button>
</div>
                </div>                
              </div>             

            </div> <!-- end nav right -->            
        
          </div> <!-- end flex-parent -->
        </div> <!-- end container -->

      </div>
    </header> <!-- end navigation -->
  