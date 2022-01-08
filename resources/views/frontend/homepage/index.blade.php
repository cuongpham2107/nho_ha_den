@extends('frontend.layouts.default')

@section('content')

<div class="container-fluid">
  <div class="row">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        @foreach ($banners as $index => $banner)
          <li data-target="#myCarousel" data-slide-to="{{ $index }}" class="@if($loop->first) active @endif"></li>
        @endforeach
      </ol>
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        @foreach ($banners as $banner)
          <div class="item @if($loop->first) active @endif">
            <img src="{{ Voyager::image($banner->image) }}" loading="lazy"
              alt="{{ $banner->title }}" style="width:100%;">
            
          </div>
        @endforeach
      </div>
    </div>
  </div>
</div>

<!-- Content2 -->
<div class="container-fluid" id="c2">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-sm-12 col-md-12 text-center">
        <h2>{{ $aboutHome->excerpt }}</h2>
      </div>

      <div class="col-lg-6 col-sm-6 col-md-6">
        {!! $aboutHome->body !!}
      </div>
      <div class="col-lg-56 col-sm-6 col-md-6">
        <img src="{{ Voyager::image($aboutHome->image) }}" loading="lazy" alt="{{ $aboutHome->excerpt }}" style="width: 100%; max-height: 315px; object-fit: cover;">
      </div>
    </div>
  </div>
</div>


<!-- Content3-->
<div class="container-fluid" id="c3">
  <div class="container" id="dichvu">
    <div class="row">
      <div class="col-lg-12 col-sm-12 col-md-12 text-center text-c3">
        <h3>CHÚNG TÔI CHUYÊN VỀ</h3>
      </div>
    </div>
    <div class="row dich-vu-mgb">
      @foreach ($services as $service)
        <div class="col-lg-4 col-sm-4 col-md-4">
          <a href="/services/{{ $service->slug }}">
            <div class="dich-vu text-center">
              <div class="dich-vu-img">
                <img src="{{ Voyager::image($service->image) }}" alt="{{ $service->title }}" loading="lazy">
              </div>
              <div class="noi-dung">
                <h4>{{ $service->title }}</h4>
                <img src="{{ asset('assets/images/thanhvang.webp') }}" alt="" loading="lazy">
                <div style="display: flex; justify-content: center;">
                  <div style="text-align: left;">{!! $service->description !!}</div>
                </div>
              </div>
            </div>
          </a>
        </div>
      @endforeach
    </div>
  </div>
</div>



<style>
  #c4 .flex {
    display: flex;
    flex-wrap: wrap;
    width: 100%;
    align-items: stretch;
  }

  #c4 .flex .panel {
    height: 100%;
  }
</style>

<!-- Content4-->
<div class="container" id="c4">
  <div class="row">
    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12 text-center"></div>
    <div class="banggiapc"></div>
  </div>
  <div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 text-center">
      <h3>QUY TRÌNH DỊCH VỤ</h3>
    </div>

    <div class="flex">
      @foreach ($procedures as $index => $procedure)
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 nopadding">
          <div class="panel @if($index==0) maudo @elseif($index==1) mauxanhduong @elseif($index==2) mauvang @else mauxanh @endif">
            <div class="panel-body">
              {{ $index + 1 }}
            </div>
            <div class="panel-footer">
              {{-- <img src="{{ Voyager::image($procedure->image) }}" alt="{{ $procedure->title }}" /> --}}
              <h5>{{ $procedure->title }}</h5>
              {!! $procedure->body !!}
            </div>
          </div>
        </div>
      @endforeach
    </div>

  </div>
</div>




<div class="container-fluid" id="c8" style="background: url({{ Voyager::image($achievement->image) }}) no-repeat center; margin-bottom: 5rem;">
  <div class="container">
    {!! $achievement->body !!}
  </div>
</div>


{{-- <div class="container">
  <div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
      <h3 class="h3logo">KHÁCH HÀNG VÀ ĐỐI TÁC</h3>
    </div>
    <div class="col-md-12">
      <div class="carousel slide multi-item-carousel" id="theCarousel">
        <div class="carousel-inner">
          @foreach ($partners as $partner)
            <div class="item @if($loop->first) active @endif">
              <div class="col-lg-4 col-md-4 col-xs-4">
                <a href="#">
                  <img src="{{ Voyager::image($partner->image) }}" class="img-responsive" alt="{{ $partner->title }}" loading="lazy">
                </a>
              </div>
            </div>
          @endforeach
          <!--  Example item end -->
        </div>
        <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
        <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
      </div>
    </div>
  </div>
</div> --}}



<!-- Content9-->
<div class="container-fluid" id="c9">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-sm-12 col-md-12 text-center">
        <h3>TIN TỨC NỔI BẬT</h3>
      </div>

      @foreach ($posts as $post)
        <div class="col-lg-4 col-sm-4 col-md-4">
          <div class="dvu">
            <a href="{{ route('blog.detail', [$post->slug]) }}">
              <img class="img-responsive" src="{{ Voyager::image($post->thumbnail('cropped')) }}" alt="{{ $post->title }}" loading="lazy">
            </a>
            <a href="{{ route('blog.detail', [$post->slug]) }}"><h5>{{ $post->title }}</h5></a>

            <a href="{{ route('blog.detail', [$post->slug]) }}" class="hvr-bounce-to-right">Xem thêm</a>
          </div>
        </div>
      @endforeach

    </div>
  </div>
</div>

@endsection

@section('js')

@endsection
