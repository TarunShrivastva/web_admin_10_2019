<!-- Start Sidebar -->
<amp-sidebar id="header-sidebar" class="ampstart-sidebar px3" layout="nodisplay">
    <div class="flex justify-start items-center ampstart-sidebar-header">
      <div role="button" aria-label="close sidebar" on="tap:header-sidebar.toggle" tabindex="0" class="ampstart-navbar-trigger items-start">✕</div>
    </div>
    
   
    <nav class="ampstart-sidebar-nav ampstart-nav">
      <ul class="list-reset m0 p0 ampstart-label">
        @foreach($menus as $key => $value)
          @if(empty($value['child_module']))
            <li><a href="{{url('/hi')}}/{{ $value['title'] == 'home'? '': $value['title']}}">{{$value['title']}}</a></li>
          @else  
            <li class="ampstart-nav-item ampstart-nav-dropdown relative ">
              <amp-accordion layout="container" disable-session-states="" class="ampstart-dropdown">
                <section>
                  <header class="labelclick">
                    {{$value['title']}} @if(count($value['child_module'])) <span>+</span> @endif
                  </header>
                  <ul class="ampstart-dropdown-items list-reset m0 p0">
                    @foreach($value['child_module'] as $key1 => $value1)
                    @if(empty($value1['child__child_module']))
                    <li class="ampstart-dropdown-item"><a href="#" class="text-decoration-none">{{ $value1['title']}}</a></li>
                    @else
                      <li class="ampstart-dropdown-item">
                        <amp-accordion layout="container" disable-session-states="" class="ampstart-dropdown">
                          <section>
                            <header class="labelclick">{{ $value1['title']}} <span>+</span></header>
                            <ul class="ampstart-dropdown-items list-reset m0 p0">
                              @foreach($value1['child__child_module'] as $key2 => $value2)
                                <li class="ampstart-dropdown-item"><a href="{{url('/hi')}}/{{ $value['title'] }}/{{ $value2['title']}}" class="text-decoration-none">{{ $value2['title'] }}</a></li>
                                @endforeach
                            </ul>
                          </section>
                        </amp-accordion>  
                      </li>
                    @endif
                    @endforeach
                  </ul>
                </section>
              </amp-accordion>
            </li>
          @endif
        @endforeach
      </ul>
    </nav>
    </amp-sidebar>
  <!-- End Sidebar -->