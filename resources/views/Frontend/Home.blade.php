@extends('Frontend.Layouts.Master')

@section('Header')
<title>Trang chủ | VGNEWS.net</title>
<meta name="description" content="">
@endsection

@section('Main_content')

@include('Frontend.Partials.Content.V1.Home.Trending')
@include('Frontend.Partials.Content.V1.Home.Feature')

<div class="main-container container pt-24" id="main-container">         

  <!-- Content -->
  <div class="row">

    <!-- Posts -->
    <div class="col-lg-8 blog__content">
      
      @include('Frontend.Partials.Content.V1.Home.LastestNews')

    </div> <!-- end posts -->

    <!-- Sidebar -->
    <aside class="col-lg-4 sidebar sidebar--right">

      @include('Frontend.Partials.Content.V1.Sidebar.PopularPosts')
      
      @include('Frontend.Partials.Content.V1.Sidebar.NewsLetter')
      
      @include('Frontend.Partials.Content.V1.Sidebar.Socials')
      
    </div> <!-- end content -->

    <!-- Ad Banner 728 -->
    <div class="text-center pb-48">
      <a href="#">
        <img src="img/content/placeholder_728.jpg" alt="">
      </a>
    </div>

    @include('Frontend.Partials.Content.V1.Home.CarouselPosts')
    @include('Frontend.Partials.Content.V1.Home.CategoriesPosts')

    {{-- @include('Frontend.Partials.Content.V1.Home.VideoPosts') --}}
    <!-- Content Secondary -->
    <div class="row">
      <!-- Posts -->
      <div class="col-lg-8 blog__content mb-72">

        @include('Frontend.Partials.Content.V1.Home.PaginatePosts')

      </div> <!-- end posts -->

      @include('Frontend.Partials.Content.V1.Sidebar.BottomSidebar')

    </div> <!-- content secondary --> 

  </div> <!-- end main container -->
  @endsection

  @section('script')

  @endsection