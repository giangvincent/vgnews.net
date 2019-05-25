
<ul class="nav__dropdown-menu">
	@foreach($nav['menu'] as $child)
	<li><a href="{{ $child['url'] }}">{{ $child['name_display'] }}</a></li>
	@endforeach
</ul>