@extends('Frontend.Layouts.Master')

@section('Header')
<title>Searching "{{ $query }}" | VGNEWS.NET</title>
@endsection

@section('Main_content')


<!-- Breadcrumbs -->
<div class="container">
    <ul class="breadcrumbs">
        <li class="breadcrumbs__item">
            <a href="/" class="breadcrumbs__url">Trang chủ</a>
        </li>
        <!-- <li class="breadcrumbs__item">
          <a href="index.html" class="breadcrumbs__url">News</a>
        </li> -->
        <li class="breadcrumbs__item breadcrumbs__item--current">
            Searching "{{ $query }}"
        </li>
    </ul>
</div>


<div class="main-container container" id="main-container">

    <!-- Content -->
    <div class="row">

        <!-- Posts -->
        <div class="col-lg-8 blog__content mb-72">
            <h1 class="page-title">"{{ $query }}"</h1>

            <div class="row card-row">
                @foreach($posts as $news)
                <div class="col-md-6">
                    <article class="entry card">
                        <div class="entry__img-holder card__img-holder">
                            <a href="{{ route('front.detailPage' , ['slug' => $news->slug, 'id' => $news->id]) }}">
                                <div class="thumb-container thumb-70">
                                    <img data-src="{{ (filter_var($news->media, FILTER_VALIDATE_URL)) ? $news->media : 'upload/'.$news->media }}" src="img/empty.png" class="entry__img lazyload" alt="{{ $news->slug }}" />
                                </div>
                            </a>
                            <a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">world</a>
                        </div>

                        <div class="entry__body card__body">
                            <div class="entry__header">

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
                            <div class="entry__excerpt">
                                <p>{{ $news->description }}</p>
                            </div>
                        </div>
                    </article>
                </div>
                @endforeach
            </div>

            <!-- Pagination -->
            @if ($posts->lastPage() > 1)
            <nav class="pagination">

                @for ($i = 1; $i <= $posts->lastPage(); $i++)

                    <a href="{{ $posts->url($i) }}" class="pagination__page {{ ($posts->currentPage() == $i) ? 'pagination__page--current' : '' }}">{{ $i }}</a>
                    @endfor
                    <!-- <a href="#" class="pagination__page">2</a>
            <a href="#" class="pagination__page">3</a>
            <a href="#" class="pagination__page">4</a> -->
                    <a href="{{ $posts->url($posts->currentPage()+1) }}" class="pagination__page pagination__icon pagination__page--next"><i class="ui-arrow-right"></i></a>
            </nav>
            {{-- <ul class="pagination">
              <li class="{{ ($paginator->currentPage() == 1) ? ' disabled' : '' }}">
            <a href="{{ $paginator->url(1) }}">Previous</a>
            </li>
            @for ($i = 1; $i <= $paginator->lastPage(); $i++)
                <li class="{{ ($paginator->currentPage() == $i) ? ' active' : '' }}">
                    <a href="{{ $paginator->url($i) }}">{{ $i }}</a>
                </li>
                @endfor
                <li class="{{ ($paginator->currentPage() == $paginator->lastPage()) ? ' disabled' : '' }}">
                    <a href="{{ $paginator->url($paginator->currentPage()+1) }}">Next</a>
                </li>
                </ul> --}}
                @endif

        </div> <!-- end posts -->

        <!-- Sidebar -->
        <aside class="col-lg-4 sidebar sidebar--right">

            @include('Frontend.Partials.Content.V1.Sidebar.PopularPosts')

            @include('Frontend.Partials.Content.V1.Sidebar.NewsLetter')

            @include('Frontend.Partials.Content.V1.Sidebar.Socials')

        </aside> <!-- end sidebar -->

    </div> <!-- end content -->
</div> <!-- end main container -->



@endsection

@section('script')

@endsection