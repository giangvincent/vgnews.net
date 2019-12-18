@extends('Frontend.Layouts.Master')

@section('Header')
<title>{{ $postDb->title }} | VGNEWS.NET</title>
<meta name="Description" content="{{ $postDb->description }}">
<meta name="Keywords" content="{{ implode(',', explode(' ', $postDb->description)) }}">
<meta property="og:url"                content="" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ $postDb->title }} | VGNEWS.NET" />
<meta property="og:description"        content="{{ $postDb->description }}" />
<meta property="og:image"              content="{{ $postDb->media }}" />
<meta property="og:locale"             content="vi_VN" />

<!-- Twitter -->
<meta property="twitter:card" content="{{ $postDb->media }}"/>
<meta property="twitter:url" content=""/>
<meta property="twitter:title" content="{{ $postDb->title }} | VGNEWS.NET"/>
<meta property="twitter:description" content="{{ $postDb->description }}"/>
<meta property="twitter:image" content="{{ $postDb->media }}" />
@endsection

@section('Main_content')

    <!-- Breadcrumbs -->
    <div class="container">
      <ul class="breadcrumbs">
        <li class="breadcrumbs__item">
          <a href="." class="breadcrumbs__url">{{ __('Home') }}</a>
        </li>
        <li class="breadcrumbs__item">
          <a href="{{ route('front.categoryList' , $cateDb->first()->slug) }}" class="breadcrumbs__url">{{ $cateDb->first()->title }}</a>
        </li>
        <!-- <li class="breadcrumbs__item breadcrumbs__item--current">
          World
        </li> -->
      </ul>
    </div>

    <div class="main-container container" id="main-container">

      <!-- Content -->
      <div class="row">
            
        <!-- post content -->
        <div class="col-lg-8 blog__content mb-72">
          <div class="content-box">           

            <!-- standard post -->
            <article class="entry mb-0">
              
              <div class="single-post__entry-header entry__header">
                @foreach($cateDb->get() as $cat)
                <a href="{{ route('front.categoryList' , $cat->slug) }}" class="entry__meta-category entry__meta-category--label entry__meta-category--green">{{ $cat->title }}</a>
                @endforeach
                <h1 class="single-post__entry-title">
                  {{ $postDb->title }}
                </h1>

                <div class="entry__meta-holder">
                  <ul class="entry__meta">
                    <!-- <li class="entry__meta-author">
                      <span>by</span>
                      <a href="#">DeoThemes</a>
                    </li> -->
                    <li class="entry__meta-date">
                      {{ date("M d, Y", strtotime($postDb->updated_at)) }}
                    </li>
                  </ul>

                  <ul class="entry__meta">
                    <li class="entry__meta-views">
                      <i class="ui-eye"></i>
                      <span>1356</span>
                    </li>
                    <li class="entry__meta-comments">
                      <a href="#">
                        <i class="ui-chat-empty"></i>13
                      </a>
                    </li>
                  </ul>
                </div>
              </div> <!-- end entry header -->

              <div class="entry__img-holder">
                <img src="{{ (filter_var($postDb->media, FILTER_VALIDATE_URL)) ? $postDb->media : 'upload/'.$postDb->media }}" alt="{{ $postDb->slug }}" class="entry__img">
              </div>

              <div class="entry__article-wrap">

                <!-- Share -->
                <div class="entry__share">
                  <div class="sticky-col">
                    <div class="socials socials--rounded socials--large">
                      <a class="social social-facebook" href="https://www.facebook.com/dialog/share?app_id=509852539469766&display=popup&href={{ urlencode(route('front.detailPage' , ['slug' => $postDb->slug, 'id' => $postDb->id])) }}&redirect_uri={{ urlencode(route('front.detailPage' , ['slug' => $postDb->slug, 'id' => $postDb->id])) }}" title="facebook" target="_blank" aria-label="facebook">
                        <i class="ui-facebook"></i>
                      </a>
                      <a class="social social-twitter" href="http://twitter.com/share?text={{ urlencode($postDb->title) }}&url={{ urlencode(route('front.detailPage' , ['slug' => $postDb->slug, 'id' => $postDb->id])) }}&hashtags=vgnews.net" title="twitter" target="_blank" aria-label="twitter">
                        <i class="ui-twitter"></i>
                      </a>
                      

                      <a class="social social-reddit" href="http://www.reddit.com/submit?url={{ urlencode(route('front.detailPage' , ['slug' => $postDb->slug, 'id' => $postDb->id])) }}&title={{ urlencode($postDb->title) }}" title="reddit" target="_blank" aria-label="reddit">
                        <i class="ui-reddit"></i>
                      </a>
                      
                      <a class="social social-pinterest" href="http://pinterest.com/pin/create/button/?url={{ urlencode(route('front.detailPage' , ['slug' => $postDb->slug, 'id' => $postDb->id])) }}&media={{ urlencode($postDb->media) }}&description={{ urlencode($postDb->description) }}" title="pinterest" target="_blank" aria-label="pinterest">
                        <i class="ui-pinterest"></i>
                      </a>

                      <a class="social" style="background-color: #aaa !important;">
                        <div class="zalo-share-button" data-href="route('front.detailPage' , ['slug' => $postDb->slug, 'id' => $postDb->id])" data-oaid="579745863508352884" data-layout="4" data-color="white" data-customize=false style="border-radius: 50%; background-color: #aaa !important; margin-top: 3px;"></div>
                      </a>
                    </div>
                  </div>                  
                </div> <!-- share -->

                <div class="entry__article">

                  <b>{{ $postDb->description }}</b>

                  {!! $postDb->content !!}

                </div> <!-- end entry article -->
                <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-width="" data-layout="button" data-action="like" data-size="large" data-share="true"></div>
              </div> <!-- end entry article wrap -->
              
              <!-- TODO : after the content of single post -->
              @include('Frontend.Partials.Content.V1.Single.NewsletterWide')
              @include('Frontend.Partials.Content.V1.Single.Navigator')
              @include('Frontend.Partials.Content.V1.Single.Author')
              @include('Frontend.Partials.Content.V1.Single.RelatedPost')
            </article> <!-- end standard post -->
            <!-- TODO : Comment box -->
            @include('Frontend.Partials.Content.V1.Single.facebook_comment')
            {{-- @include('Frontend.Partials.Content.V1.Single.CommentList')
            @include('Frontend.Partials.Content.V1.Single.CommentForm') --}}

          </div> <!-- end content box -->
        </div> <!-- end post content -->
        
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
<script src="https://sp.zalo.me/plugins/sdk.js"></script>
@endsection