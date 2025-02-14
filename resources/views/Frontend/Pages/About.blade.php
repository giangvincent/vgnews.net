@extends('Frontend.Layouts.Master')

@section('header')
    
@endsection

@section('Main_content')
<!-- Breadcrumbs -->
    <div class="container">
      <ul class="breadcrumbs">
        <li class="breadcrumbs__item">
          <a href="index.html" class="breadcrumbs__url">Home</a>
        </li>
        <li class="breadcrumbs__item">
          <a href="index.html" class="breadcrumbs__url">News</a>
        </li>
        <li class="breadcrumbs__item breadcrumbs__item--current">
          World
        </li>
      </ul>
    </div>

    <div class="main-container container" id="main-container">            
      <!-- post content -->
      <div class="blog__content mb-72">
        <h1 class="page-title">About</h1>
        <img src="img/content/about/about_bg.jpg" class="page-featured-img">
        <div class="row justify-content-center">
          <div class="col-lg-8">
            <div class="entry__article">
              <p>iPrice Group report offers insights on daily e-commerce activity in the Philippines and Southeast. Statistically, you stand a better chance for success if you have some sort of strategic ask in almost everything that you do -- in-person, on the phone, over email, or on social media.</p>

              <p>Think about it: If you make one additional ask per day and convert at around 10 percent. Then you have three people each month providing you with benefits that you'd have missed otherwise It's essential to make sure that your ask relates to some direct path to what you want, whether it is revenue, a business relationship or anything else of prime importance to you.</p>
              
              <blockquote><p>“Dreams and dedication are powerful combination.”</p></blockquote>

              <p>This strategy uses the Ben Franklin Effect: When people do you a favor, they are more likely to do another. When you meet someone you yourself might be able to assist, ask for their help and, at the same time (e.g. in the same conversation) offer yours. And make a point to be of service even if others might not be able to help you immediately.</p>

              <p>The same goes for phone calls, emails or social media interactions. Being afraid to ask for what you want is a detriment to your success and prosperity. If you lack this skill, then you need to work on it! Asking for help is a form of radical humility, something that with practice will have amazing benefits for all involved.Use this study to your advantage! Don't just ask people for help - ask specifically for what you.</p>

              <p>In order to attract what you want, you actually have to consciously and strategically think about what you want and focus in on it. Then, you need to take some sort of action using the same four strategies you use to ask for help in order to make it happen. You can't get what you want sitting around on your couch. You need to put yourself out there and stimulate interest in person, via email, by phone and through social media.</p>

            </div>
          </div>
        </div>
      </div> <!-- end post content -->
    </div> <!-- end main container -->
@endsection

@section('script')
    
@endsection