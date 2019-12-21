<!-- TODO Top bar -->
<!-- Top Bar -->
<div class="top-bar d-none d-lg-block">
  <div class="container">
    <div class="row">

      <!-- Top menu -->
      <div class="col-lg-6">
        <ul class="top-menu">
          @foreach ($topbar as $nav)
          <li><a href="{{$nav['url']}}">{{ $nav['name_display'] }}</a></li>
          @endforeach

        </ul>
      </div>

      <!-- Socials -->
      <div class="col-lg-6">
        <div class="socials nav__socials socials--nobase socials--white justify-content-end">
          @foreach ($socials as $s)
          <a class="social social-{{$s->slug}}" href="{{$s->description}}" target="_blank" aria-label="{{$s->slug}}">
            <i class="ui-{{$s->slug}}"></i>
          </a>
          @endforeach


        </div>
      </div>

    </div>
  </div>
</div> <!-- end top bar -->