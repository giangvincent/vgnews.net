<!-- Widget Categories -->
<aside class="widget widget_categories">
  <h4 class="widget-title">{{__('Categories')}}</h4>
  <ul>
    @foreach($catsWidget as $cat)
    <li>
      <a href="{{ $cat->slug }}">{{ $cat->title }} <span class="categories-count">{{ $cat->posts->count() }}</span></a>
    </li>
    @endforeach
  </ul>
</aside> <!-- end widget categories -->