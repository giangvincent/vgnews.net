<!-- TODO Paginate all News the rest of news  -->
<!-- Worldwide News -->
        <section class="section">
          <div class="title-wrap title-wrap--line">
            <h3 class="section-title">Worldwide</h3>
            <a href="#" class="all-posts-url">View All</a>
          </div>
          <?php dump($postsWithPagination); ?>
          @foreach ($postsWithPagination as $post)
          <article class="entry card post-list">
            <div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(img/content/list/list_post_1.jpg)">
              <a href="single-post.html" class="thumb-url"></a>
              <img src="img/content/list/list_post_1.jpg" alt="" class="entry__img d-none">
              <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--blue">Business</a>
            </div>

            <div class="entry__body post-list__body card__body">
              <div class="entry__header">
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
              <div class="entry__excerpt">
                <p>iPrice Group report offers insights on daily e-commerce activity in the ...</p>
              </div>
            </div>
          </article>
          @endforeach
          
        </section> <!-- end worldwide news -->

        <!-- Pagination -->
        <nav class="pagination">
          <span class="pagination__page pagination__page--current">1</span>
          <a href="#" class="pagination__page">2</a>
          <a href="#" class="pagination__page">3</a>
          <a href="#" class="pagination__page">4</a>
          <a href="#" class="pagination__page pagination__icon pagination__page--next"><i class="ui-arrow-right"></i></a>
        </nav>