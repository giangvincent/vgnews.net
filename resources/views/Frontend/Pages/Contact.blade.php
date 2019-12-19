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
        <h1 class="page-title">Contact Us</h1>
        
        <!-- Google Map -->
        <div id="google-map" class="gmap" data-address="V Tytana St, Manila, Philippines"></div>

        <div class="row justify-content-center">
          <div class="col-lg-8">
            <h4>Drop Us a Message</h4>
            <p>Don't hesitate to get in touch. We will reply you as soon as possible.</p>
            <ul class="contact-items">
              <li class="contact-item"><address>Centre Inc. CA 48792 Star Apple ave. 54</address></li>
              <li class="contact-item"><a href="tel:+1-800-1554-456-123">+ 1 (800) 155 4561</a></li>
              <li class="contact-item"><a href="mailto:themesupport@gmail.com">themesupport@gmail.com</a></li>
            </ul>            

            <!-- Contact Form -->
            <form id="contact-form" class="contact-form mt-30 mb-30" method="post" action="#">
              <div class="contact-name">
                <label for="name">Name <abbr title="required" class="required">*</abbr></label>
                <input name="name" id="name" type="text">
              </div>
              <div class="contact-email">
                <label for="email">Email <abbr title="required" class="required">*</abbr></label>
                <input name="email" id="email" type="email">
              </div>
              <div class="contact-subject">
                <label for="email">Subject</label>
                <input name="subject" id="subject" type="text">
              </div>
              <div class="contact-message">
                <label for="message">Message <abbr title="required" class="required">*</abbr></label>
                <textarea id="message" name="message" rows="7" required="required"></textarea>
              </div>

              <input type="submit" class="btn btn-lg btn-color btn-button" value="Send Message" id="submit-message">
              <div id="msg" class="message"></div>
            </form>

          </div>
        </div>
      </div> <!-- end post content -->
    </div> <!-- end main container -->
@endsection

@section('script')
    
@endsection