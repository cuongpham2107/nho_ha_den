<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
  <meta name="content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />

  <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>

  <link rel="shortcut icon" href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" type="image/png">

  <meta property="og:image"
    content="{{ \TCG\Voyager\Facades\Voyager::image($pageMeta['image'] ?? setting('site.logo')) }}" />
  <meta property="og:url" content="{{ \Request::fullUrl() }}" />
  <meta property="og:type" content="Website" />
  <meta property="og:title" content="{{ $pageMeta['title'] ?? setting('site.title') }}" />
  <meta property="og:description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
  <meta property="og:content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
  <meta name="csrf-token" content="{{ csrf_token() }}">

  {{-- <script type="text/javascript">
		window._wpemojiSettings = { "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/13.1.0\/72x72\/", "ext": ".png", "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/13.1.0\/svg\/", "svgExt": ".svg", "source": { "concatemoji": "https:\/\/templatekit.jegtheme.com\/sometea\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.9.3" } };
		/*! This file is auto-generated */
		!function (e, a, t) { var n, r, o, i = a.createElement("canvas"), p = i.getContext && i.getContext("2d"); function s(e, t) { var a = String.fromCharCode; p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, e), 0, 0); e = i.toDataURL(); return p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, t), 0, 0), e === i.toDataURL() } function c(e) { var t = a.createElement("script"); t.src = e, t.defer = t.type = "text/javascript", a.getElementsByTagName("head")[0].appendChild(t) } for (o = Array("flag", "emoji"), t.supports = { everything: !0, everythingExceptFlag: !0 }, r = 0; r < o.length; r++)t.supports[o[r]] = function (e) { if (!p || !p.fillText) return !1; switch (p.textBaseline = "top", p.font = "600 32px Arial", e) { case "flag": return s([127987, 65039, 8205, 9895, 65039], [127987, 65039, 8203, 9895, 65039]) ? !1 : !s([55356, 56826, 55356, 56819], [55356, 56826, 8203, 55356, 56819]) && !s([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447], [55356, 57332, 8203, 56128, 56423, 8203, 56128, 56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447]); case "emoji": return !s([10084, 65039, 8205, 55357, 56613], [10084, 65039, 8203, 55357, 56613]) }return !1 }(o[r]), t.supports.everything = t.supports.everything && t.supports[o[r]], "flag" !== o[r] && (t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && t.supports[o[r]]); t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && !t.supports.flag, t.DOMReady = !1, t.readyCallback = function () { t.DOMReady = !0 }, t.supports.everything || (n = function () { t.readyCallback() }, a.addEventListener ? (a.addEventListener("DOMContentLoaded", n, !1), e.addEventListener("load", n, !1)) : (e.attachEvent("onload", n), a.attachEvent("onreadystatechange", function () { "complete" === a.readyState && t.readyCallback() })), (n = t.source || {}).concatemoji ? c(n.concatemoji) : n.wpemoji && n.twemoji && (c(n.twemoji), c(n.wpemoji))) }(window, document, window._wpemojiSettings);
	</script> --}}

  <style>
    @import url('https://fonts.googleapis.com/css2?family=Crimson+Pro:ital,wght@0,200;0,300;0,400;1,200;1,300;1,400&family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Oswald:wght@200;300;400;500;600;700&family=Roboto:wght@300&display=swap');
    *{
      font-family: 'Lora', serif;
      font-family: 'Oswald', sans-serif;
      font-family: 'Roboto', sans-serif;
    }
  </style>

  <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
  <link rel='stylesheet' id='jkit-elements-main-css'
    href='{{ asset('assets/plugins/jeg-elementor-kit/assets/css/elements/mainc4d1.css?ver=2.4.4-dev') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='wp-block-library-css' href='{{ asset('assets/css/dist/block-library/style.min7404.css?ver=5.9.3') }}'
    type='text/css' media='all' />
  <link rel='stylesheet' id='template-kit-export-css'
    href='{{ asset('assets/plugins/template-kit-export/public/assets/css/template-kit-export-public.min365c.css?ver=1.0.21') }}'
    type='text/css' media='all' />
  <link rel='stylesheet' id='hfe-style-css'
    href='{{ asset('assets/plugins/header-footer-elementor/assets/css/header-footer-elementora242.css?ver=1.6.11') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/eicons/css/elementor-icons.min7816.css?ver=5.15.0') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-frontend-css'
    href='{{ asset('assets/plugins/elementor/assets/css/frontend-lite.min3ab2.css?ver=3.6.5')}}' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-post-3-css'
    href='{{ asset('assets/uploads/sites/168/elementor/css/post-33ae1.css?ver=1653465152')}}' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-global-css'
    href='{{ asset('assets/uploads/sites/168/elementor/css/global2b42.css?ver=1653465153')}}' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-post-7-css'
    href='{{ asset('assets/uploads/sites/168/elementor/css/post-73edf.css?ver=1653465154')}}' type='text/css' media='all' />
  <link rel='stylesheet' id='font-awesome-5-all-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/font-awesome/css/all.min3ab2.css?ver=3.6.5')}}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='font-awesome-4-shim-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/font-awesome/css/v4-shims.min3ab2.css?ver=3.6.5')}}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='hfe-widgets-style-css'
    href='{{ asset('assets/plugins/header-footer-elementor/inc/widgets-css/frontenda242.css?ver=1.6.11')}}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-post-646-css'
    href='{{ asset('assets/uploads/sites/168/elementor/css/post-6463edf.css?ver=1653465154')}}' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-post-654-css'
    href='{{ asset('assets/uploads/sites/168/elementor/css/post-6543edf.css?ver=1653465154')}}' type='text/css' media='all' />
  <link rel='stylesheet' id='hello-elementor-css' href='{{ asset('assets/themes/hello-elementor/style.min0875.css?ver=2.5.0')}}'
    type='text/css' media='all' />
  <link rel='stylesheet' id='hello-elementor-theme-style-css'
    href='{{ asset('assets/themes/hello-elementor/theme.min0875.css?ver=2.5.0')}}' type='text/css' media='all' />
  <link rel='stylesheet' id='google-fonts-1-css'
    href='https://fonts.googleapis.com/css?family=Playfair+Display%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CHeebo%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&amp;display=auto&amp;ver=5.9.3'
    type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-icons-shared-0-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/font-awesome/css/fontawesome.min52d5.css?ver=5.15.3') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-fa-brands-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/font-awesome/css/brands.min52d5.css?ver=5.15.3') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-jkiticon-css'
    href='{{ asset('assets/plugins/jeg-elementor-kit/assets/fonts/jkiticon/jkiticonc4d1.css?ver=2.4.4-dev') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-fa-solid-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/font-awesome/css/solid.min52d5.css?ver=5.15.3') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-fa-regular-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/font-awesome/css/regular.min52d5.css?ver=5.15.3') }}' type='text/css'
    media='all' />
  <script type='text/javascript' src='{{ asset('assets/js/jquery/jquery.minaf6c.js?ver=3.6.0') }}' id='jquery-core-js'></script>
  <script type='text/javascript' src='{{ asset('assets/js/jquery/jquery-migrate.mind617.js?ver=3.3.2') }}' id='jquery-migrate-js'>
  </script>
  <script type='text/javascript'
    src='{{ asset('assets/plugins/template-kit-export/public/assets/js/template-kit-export-public.min365c.js?ver=1.0.21') }}'
    id='template-kit-export-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/elementor/assets/lib/font-awesome/js/v4-shims.min3ab2.js?ver=3.6.5') }}'
    id='font-awesome-4-shim-js'></script>
  {{-- <link rel="alternate" type="application/json+oembed"
    href="wp-json/oembed/1.0/embed05cb.json?url=https%3A%2F%2Ftemplatekit.jegtheme.com%2Fsometea%2F" />
  <link rel="alternate" type="text/xml+oembed"
    href="wp-json/oembed/1.0/embed3a2d?url=https%3A%2F%2Ftemplatekit.jegtheme.com%2Fsometea%2F&amp;format=xml" /> --}}
  {{-- <style id="jeg_dynamic_css" type="text/css" data-type="jeg_custom-css"></style> --}}

  <!-- hostline zalo, facebook -->
  <link href='{{ asset('assets/css/custom.css') }}' rel='stylesheet' type='text/css' media='all' />

  @yield('style')

  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-6Y861CTZJ8"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'G-6Y861CTZJ8');
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
      "email": "{{ setting('site.email') }}"
    }
  </script>
</head>

<body
  class="page-template page-template-elementor_header_footer page page-id-785 ehf-header ehf-footer ehf-template-hello-elementor ehf-stylesheet-hello-elementor jkit-color-scheme elementor-default elementor-template-full-width elementor-kit-3 elementor-page elementor-page-785">

  @include('frontend.layouts.partials.loading')

  <div id="page" class="hfeed site">
    @include('frontend.layouts.partials.header')

    @yield('content')

    @include('frontend.layouts.partials.footer')
  </div>

  <!-- JAVASCRIPT FILES -->
  <link rel='stylesheet' id='magnific-popup-css'
    href='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/magnific-popup/magnific-popupf488.css?ver=1.1.0') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='tiny-slider-css'
    href='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/tiny-slider/tiny-sliderf342.css?ver=2.9.3') }}' type='text/css'
    media='all' />
  <link rel='stylesheet' id='e-animations-css'
    href='{{ asset('assets/plugins/elementor/assets/lib/animations/animations.min3ab2.css?ver=3.6.5') }}' type='text/css'
    media='all' />
  <script type='text/javascript' src='{{ asset('assets/themes/hello-elementor/assets/js/hello-frontend.min8a54.js?ver=1.0.0')}}'
    id='hello-theme-frontend-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/elementor/assets/js/webpack.runtime.min3ab2.js?ver=3.6.5')}}'
    id='elementor-webpack-runtime-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/elementor/assets/js/frontend-modules.min3ab2.js?ver=3.6.5')}}'
    id='elementor-frontend-modules-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/elementor/assets/lib/waypoints/waypoints.min05da.js?ver=4.0.2')}}'
    id='elementor-waypoints-js'></script>
  <script type='text/javascript' src='{{ asset('assets/js/jquery/ui/core.min0028.js?ver=1.13.1')}}' id='jquery-ui-core-js'></script>
  <script type='text/javascript' id='elementor-frontend-js-before'>
    var elementorFrontendConfig = {
      "environmentMode": {
        "edit": false,
        "wpPreview": false,
        "isScriptDebug": false
      },
      "i18n": {
        "shareOnFacebook": "Share on Facebook",
        "shareOnTwitter": "Share on Twitter",
        "pinIt": "Pin it",
        "download": "Download",
        "downloadImage": "Download image",
        "fullscreen": "Fullscreen",
        "zoom": "Zoom",
        "share": "Share",
        "playVideo": "Play Video",
        "previous": "Previous",
        "next": "Next",
        "close": "Close"
      },
      "is_rtl": false,
      "breakpoints": {
        "xs": 0,
        "sm": 480,
        "md": 768,
        "lg": 1025,
        "xl": 1440,
        "xxl": 1600
      },
      "responsive": {
        "breakpoints": {
          "mobile": {
            "label": "Mobile",
            "value": 767,
            "default_value": 767,
            "direction": "max",
            "is_enabled": true
          },
          "mobile_extra": {
            "label": "Mobile Extra",
            "value": 880,
            "default_value": 880,
            "direction": "max",
            "is_enabled": false
          },
          "tablet": {
            "label": "Tablet",
            "value": 1024,
            "default_value": 1024,
            "direction": "max",
            "is_enabled": true
          },
          "tablet_extra": {
            "label": "Tablet Extra",
            "value": 1200,
            "default_value": 1200,
            "direction": "max",
            "is_enabled": false
          },
          "laptop": {
            "label": "Laptop",
            "value": 1366,
            "default_value": 1366,
            "direction": "max",
            "is_enabled": false
          },
          "widescreen": {
            "label": "Widescreen",
            "value": 2400,
            "default_value": 2400,
            "direction": "min",
            "is_enabled": false
          }
        }
      },
      "version": "3.6.5",
      "is_static": false,
      "experimentalFeatures": {
        "e_dom_optimization": true,
        "e_optimized_assets_loading": true,
        "e_optimized_css_loading": true,
        "a11y_improvements": true,
        "e_import_export": true,
        "additional_custom_breakpoints": true,
        "e_hidden_wordpress_widgets": true,
        "hello-theme-header-footer": true,
        "landing-pages": true,
        "elements-color-picker": true,
        "favorite-widgets": true,
        "admin-top-bar": true
      },
      "urls": {
        "assets": "https:\/\/templatekit.jegtheme.com\/sometea\/wp-content\/plugins\/elementor\/assets\/"
      },
      "settings": {
        "page": [],
        "editorPreferences": []
      },
      "kit": {
        "active_breakpoints": ["viewport_mobile", "viewport_tablet"],
        "global_image_lightbox": "yes",
        "lightbox_enable_counter": "yes",
        "lightbox_enable_fullscreen": "yes",
        "lightbox_enable_zoom": "yes",
        "lightbox_enable_share": "yes",
        "lightbox_title_src": "title",
        "lightbox_description_src": "description",
        "hello_header_logo_type": "title",
        "hello_header_menu_layout": "horizontal",
        "hello_footer_logo_type": "logo"
      },
      "post": {
        "id": 7,
        "title": "Sometea%20%E2%80%93%20Tea%20House%20Cafe%20%26%20Restaurant%20Elementor%20Template%20Kit%20by%20Jegtheme",
        "excerpt": "",
        "featuredImage": false
      }
    };
  </script>
  <script type='text/javascript' src='{{ asset('assets/plugins/elementor/assets/js/frontend.min3ab2.js?ver=3.6.5') }}'
    id='elementor-frontend-js'></script>
  <script type='text/javascript' id='elementor-frontend-js-after'>
    var jkit_ajax_url = "indexe2f2.html?jkit-ajax-request=jkit_elements",
      jkit_nonce = "54b830479e";
  </script>
  <script type='text/javascript'
    src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/sticky-elementc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-sticky-element-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/nav-menuc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-element-navmenu-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/fun-factc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-element-funfact-js'></script>
  <script type='text/javascript'
    src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/progress-barc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-element-progressbar-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/teamc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-element-team-js'></script>
  <script type='text/javascript'
    src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/magnific-popup/jquery.magnific-popup.minf488.js?ver=1.1.0') }}'
    id='magnific-popup-js'></script>
  <script type='text/javascript'
    src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/video-buttonc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-element-videobutton-js'></script>
  <script type='text/javascript'
    src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/testimonialsc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-element-testimonials-js'></script>
  <script type='text/javascript' src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/tiny-slider/tiny-sliderf342.js?ver=2.9.3') }}'
    id='tiny-slider-js'></script>
  {{-- <script type='text/javascript' src='{{ asset('assets/plugins/jeg-elementor-kit/assets/js/elements/mailchimpc4d1.js?ver=2.4.4-dev') }}'
    id='jkit-element-mailchimp-js'></script> --}}
  {{-- <script type='text/javascript' id='jkit-element-pagination-js-extra'>
    /* <![CDATA[ */
    var jkit_element_pagination_option = {
      "element_prefix": "jkit_element_ajax_"
    };
    /* ]]> */
  </script>
  <script type='text/javascript'
    src='assets/plugins/jeg-elementor-kit/assets/js/elements/post-paginationc4d1.js?ver=2.4.4-dev'
    id='jkit-element-pagination-js'></script> --}}

  {{-- <!-- Messenger Plugin chat Code -->
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
        xfbml: true,
        version: 'v12.0'
      });
    };

    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s);
      js.id = id;
      js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script> --}}

  @include('frontend.layouts.partials.alert')

  @yield('js')
</body>

</html>
