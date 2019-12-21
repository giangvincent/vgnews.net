<!-- TODO socials wiget make fanpage, and this dynamic wiget -->
<!-- Widget Socials -->
<aside class="widget widget-socials">
  <h4 class="widget-title">Let's hang out on social</h4>
  <div class="socials socials--wide socials--large">
    <div class="row row-16">
      <div class="col">
        @foreach ($socials as $s)
        <a class="social social-{{$s->slug}}" href="{{$s->description}}" title="{{$s->slug}}" target="_blank" aria-label="{{$s->slug}}">
          <i class="ui-{{$s->slug}}"></i>
          <span class="social__text">{{$s->title}}</span>
        </a>
        @endforeach
        
      </div>
      
    </div>
  </div>
</aside> <!-- end widget socials -->

</aside> <!-- end sidebar -->