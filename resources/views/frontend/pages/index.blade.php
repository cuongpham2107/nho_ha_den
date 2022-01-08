@extends('frontend.layouts.default')

@section('content')
  <div id="breadcrumbs" class="flexbox-container ">
    <div class="breadcrumb-inner">
      <div class="container">
        <nav class="breadcrumb" role="navigation" aria-label="breadcrumbs">
          <a href="{{ asset('/') }}" title="general.breadcrumbs.home_link_title">Trang chủ /</a>
          <span class="revicon-angle-right"></span>
          <span>{{ $title }}</span>
        </nav>
      </div>
    </div>
  </div>

  <div style="padding-bottom: 25px;">
    <div class="container" id="layout-page-main">
      <div class="content-page">
        @if($page)
          {!! $page->body !!}
        @else
          <h5>Không tìm thấy trang</h5>
        @endif
      </div>
    </div>
  </div>

@endsection
