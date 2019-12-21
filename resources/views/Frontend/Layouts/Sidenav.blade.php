<!-- Sidenav -->
<header class="sidenav" id="sidenav">

  <!-- close -->
  <div class="sidenav__close">
    <button class="sidenav__close-button" id="sidenav__close-button" aria-label="close sidenav">
      <i class="ui-close sidenav__close-icon"></i>
    </button>
  </div>

  <!-- Main Content Side Nav -->
  <nav class="sidenav__menu-container">
    <ul class="sidenav__menu" role="menubar">
      @foreach($navs as $nav)
      <li>
        <a href="{{ $nav['url'] }}" class="sidenav__menu-url">{{ $nav['name_display'] }}</a>
        @if(count($nav['menu']) > 0)
        <button class="sidenav__menu-toggle" aria-haspopup="true" aria-label="Open dropdown"><i
            class="ui-arrow-down"></i></button>
        @include('Frontend.Layouts.SidenavChild')
        @endif
      </li>
      @endforeach

    </ul>
  </nav>

  <div class="socials sidenav__socials">
    @foreach ($socials as $s)
    <a class="social social-{{$s->slug}}" href="{{$s->description}}" target="_blank" aria-label="{{$s->slug}}">
      <i class="ui-{{$s->slug}}"></i>
    </a>
    @endforeach
  </div>
</header> <!-- end sidenav -->