<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}"/>
    <meta name="content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}"/>

    <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>

    <link rel="shortcut icon" href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" type="image/png">

    <meta property="og:image" content="{{ \TCG\Voyager\Facades\Voyager::image($pageMeta['image'] ?? setting('site.logo')) }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ $pageMeta['title'] ?? setting('site.title') }}" />
    <meta property="og:description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
    <meta property="og:content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- GOOGLE WEB FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
    <!-- END OF GOOGLE WEB FONTS -->

    <!-- BOOTSTRAP & STYLES -->
    <script src='{{ asset('assets/scripts/jquery.min.js') }}' type='text/javascript'></script>
    <link href='{{ asset('assets/styles/bootstrap.min.css') }}' rel='stylesheet' type='text/css' media='all' />
    <link href='{{ asset('assets/styles/font-awesome.min.css') }}' rel='stylesheet' type='text/css' media='all' />
    <link href='{{ asset('assets/styles/style.css') }}' rel='stylesheet' type='text/css' media='all' />
    <link href='{{ asset('assets/styles/custom.css') }}' rel='stylesheet' type='text/css' media='all' />
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper@7/swiper-bundle.min.css"
    />

    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <!-- hostline zalo, facebook -->
    <link href='{{ asset('assets/css/custom.css') }}' rel='stylesheet' type='text/css' media='all' />

    <style>
      #layout-page-main img {
        width: 100%;
        height: auto;
      }
    </style>
    @yield('style')

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-JY7GDVCWWB"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-JY7GDVCWWB');
    </script>
    
    <script type="application/ld+json">
      {
        "@context": "http://schema.org",
        "@type": "Website",
        "title": "{{ $pageMeta['title'] ?? setting('site.title') }}",
        "description": "{{ $pageMeta['meta_description'] ?? setting('site.description') }}",
        "address": {
          "@type": "PostalAddress",
          "addressLocality": "{{ setting('site.address') }}"
        },
        "telephone": "{{ setting('site.phone') }}",
        "email" : "{{ setting('site.email') }}"
      }
    </script>
</head>

<body>

  @include('frontend.layouts.partials.header')

        @yield('content')
  
  @include('frontend.layouts.partials.footer')

  <div class="hotline-phone-ring-wrap float-icon-hotline">
      <ul class="left-icon hotline">
{{--          <li class="hotline_float_icon" style="left: 33px; bottom: -30px;">--}}
{{--              <a target="_blank" rel="nofollow" id="messengerButton"--}}
{{--                href="https://zalo.me/"><i--}}
{{--                      class="fa fa-zalo animated infinite tada"></i><span>Zalo</span></a></li>--}}
{{--          <li>--}}
              <div class="hotline-phone-ring">
                  <div class="hotline-phone-ring-circle"></div>
                  <div class="hotline-phone-ring-circle-fill"></div>
                  <div class="hotline-phone-ring-img-circle"><a href="tel:{{ setting('site.phone') }}" class="pps-btn-img">
                          <img src="https://netweb.vn/img/hotline/icon.png" alt="so dien thoai" width="50" loading="lazy"> </a></div>
              </div>
              <div class="hotline-bar">
                  <a class="text-hotline" href="tel:{{ setting('site.phone') }}">
                      {{ setting('site.phone') }}
                  </a>
              </div>
          </li>
      </ul>
  </div>


  <!-- JAVASCRIPT FILES -->

  <script src='{{ asset('assets/scripts/bootstrap.min.js?v=233') }}' type='text/javascript'></script>
  <script src='{{ asset('assets/scripts/owl.carousel.js') }}' type='text/javascript'></script>
  <link href='{{ asset('assets/styles/owl.carousel.css') }}' rel='stylesheet' type='text/css' media='all' />

  <!-- JAVASCRIPT scroll-top -->
  <script>
    $(function () {
      $(window).scroll(function () {
        if ($(this).scrollTop() > 100) $('.scroll-top').fadeIn();
        else $('.scroll-top').fadeOut();
      });
      $('.scroll-top').click(function () {
        $('body,html').animate({scrollTop: 0}, 'slow');
      });
    });
  </script>
  <!-- end JAVASCRIPT scroll-top -->
  <script>
    $('.count').each(function () {
      $(this).prop('Counter', 0).animate({
        Counter: $(this).text()
      }, {
        duration: 1000,
        easing: 'swing',
        step: function (now) {
          $(this).text(Math.ceil(now));
        }
      });
    });

  </script>
  <script>
    // Instantiate the Bootstrap carousel
    $('.multi-item-carousel').carousel({
      interval: false
    });

    // for every slide in carousel, copy the next slide's item in the slide.
    // Do the same for the next, next item.
    $('.multi-item-carousel .item').each(function () {
      var next = $(this).next();
      if (!next.length) {
        next = $(this).siblings(':first');
      }
      next.children(':first-child').clone().appendTo($(this));

      if (next.next().length > 0) {
        next.next().children(':first-child').clone().appendTo($(this));
      } else {
        $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
      }
    });
  </script>
  <!-- END OF JAVASCRIPT FILES -->

  <!-- Messenger Plugin chat Code -->
  <div id="fb-root"></div>

  <!-- Your Plugin chat code -->
  <div id="fb-customer-chat" class="fb-customerchat">
  </div>

  <script>
    var chatbox = document.getElementById('fb-customer-chat');
    chatbox.setAttribute("page_id", {{ setting('site.facebook_page_id') }});
    chatbox.setAttribute("attribution", "biz_inbox");
  </script>

  <!-- Your SDK code -->
  <script>
    window.fbAsyncInit = function() {
      FB.init({
        xfbml            : true,
        version          : 'v12.0'
      });
    };

    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script>

  @yield('js')
</body>

</html>
