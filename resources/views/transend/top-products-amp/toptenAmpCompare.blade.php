@extends('transend_layouts.amp_layouts.masterAmp')
@section('main_content')
<div class="col-12">
    <div class="blog-posts-area">
        <div class="single-blog-post featured-post single-post">
            @foreach($compArray as $key => $compare)
            <table class="table-n" align="center">
                        <tbody>
                        <tr>
                            <td align="center">
                                <h2>{{ $compare['object']->title }}</h2>
                                <h4>Best Mobile Phones Under 7000 in India</h4>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr class="visible-7">
                                        <td align="center"><span class="label"><strong>{{ $compare['title'][0] }}</strong></span><br><br><amp-img src="{{ URL::to('upload/'. $compare['image'][0]) }}" alt="search" width="261" height="550" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img></td>
                                        <td></td>
                                        <td align="center"><span class="label"><strong>{{ $compare['title'][1] }}</strong></span><br><br><amp-img src="{{ URL::to('upload/'. $compare['image'][1]) }}" alt="search" width="261" height="550" layout="responsive" sizes="(min-width: 569px) 50px, 50px"></amp-img></td>
                                    </tr>
                                    @foreach($compare['specifications'] as $key=>$specification)
                                    <tr>
                                        <td >{{ isset($compare['specifications'][$key][1])? $compare['specifications'][$key][1] : 'N/A'}}</td>
                                        <td >{{ isset($compare['specifications'][$key][0])? $compare['specifications'][$key][0] : ''}}</td>
                                        <td >{{ isset($compare['specifications'][$key][2])? $compare['specifications'][$key][2] : 'N/A'}}</td>
                                    </tr>
                                    @endforeach
                                    <tr>
                                        <td>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-1.jpg') }}" style="display: inline-block;" alt="paytm" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['paytm'][0] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-2.jpg') }}" alt="flipkart"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['flipkart'][0] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-3.jpg') }}" alt="amazon"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['amazon'][0] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-4.jpg') }}" alt="tata"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['tata_cliq'][0] }}</span></div>
                                        </td>
                                        <td align="center">Price</td>
                                        <td>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-1.jpg') }}" style="display: inline-block;" alt="paytm" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['paytm'][1] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-2.jpg') }}" alt="flipkart"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['flipkart'][1] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-3.jpg') }}" alt="amazon"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['amazon'][1] }}</span></div>
                                            <div><amp-img src="{{ URL::to('frontend/img/logo-4.jpg') }}" alt="tata"  style="display: inline-block;" width="180" height="52" layout="responsive" sizes="(min-width: 569px) 55px, 55px"></amp-img> <span>{{ $compare['tata_cliq'][1] }}</span></div>
                                        </td>
                                    </tr>
                                </tbody></table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            @endforeach    
        </div>
    </div>
</div>        
@endsection
@section('side_section')
{{-- <div class="col-12">
    <div class="blog-posts-area">
        @include('transend_layouts.amp_layouts.comments')
        @include('transend_layouts.amp_layouts.authorAmp')
        @include('transend_layouts.amp_layouts.related')
    </div>
</div>         --}}
@endsection