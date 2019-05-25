<ul class="sidenav__menu-dropdown">
  @foreach($nav['menu'] as $child)
  <li><a href="{{ $child['url'] }}" class="sidenav__menu-url">{{ $child['name_display'] }}</a></li>
  @endforeach

</ul>