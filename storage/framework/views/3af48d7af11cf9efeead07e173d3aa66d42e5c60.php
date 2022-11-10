<!DOCTYPE html>
<html lang="<?php echo e(app()->getLocale()); ?>">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="<?php echo e($pageMeta['meta_description'] ?? setting('site.description')); ?>" />
  <meta name="content" content="<?php echo e($pageMeta['meta_content'] ?? setting('site.content')); ?>" />

  <title><?php echo e($pageMeta['title'] ?? setting('site.title')); ?></title>

  <link rel="shortcut icon" href="<?php echo e(\TCG\Voyager\Facades\Voyager::image(setting('site.logo'))); ?>" type="image/png">

  <meta property="og:image"
    content="<?php echo e(\TCG\Voyager\Facades\Voyager::image($pageMeta['image'] ?? setting('site.logo'))); ?>" />
  <meta property="og:url" content="<?php echo e(\Request::fullUrl()); ?>" />
  <meta property="og:type" content="Website" />
  <meta property="og:title" content="<?php echo e($pageMeta['title'] ?? setting('site.title')); ?>" />
  <meta property="og:description" content="<?php echo e($pageMeta['meta_description'] ?? setting('site.description')); ?>" />
  <meta property="og:content" content="<?php echo e($pageMeta['meta_content'] ?? setting('site.content')); ?>" />
  <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">

  

  <style>
    @import  url('https://fonts.googleapis.com/css2?family=Crimson+Pro:ital,wght@0,200;0,300;0,400;1,200;1,300;1,400&family=Lora:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Oswald:wght@200;300;400;500;600;700&family=Roboto:wght@300&display=swap');
    *{
      font-family: 'Lora', serif;
      font-family: 'Oswald', sans-serif;
      font-family: 'Roboto', sans-serif;
    }
  </style>

  <link rel="stylesheet" href="<?php echo e(asset('assets/css/style.css')); ?>">
  <link rel='stylesheet' id='jkit-elements-main-css'
    href='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/css/elements/mainc4d1.css?ver=2.4.4-dev')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='wp-block-library-css' href='<?php echo e(asset('assets/css/dist/block-library/style.min7404.css?ver=5.9.3')); ?>'
    type='text/css' media='all' />
  <link rel='stylesheet' id='template-kit-export-css'
    href='<?php echo e(asset('assets/plugins/template-kit-export/public/assets/css/template-kit-export-public.min365c.css?ver=1.0.21')); ?>'
    type='text/css' media='all' />
  <link rel='stylesheet' id='hfe-style-css'
    href='<?php echo e(asset('assets/plugins/header-footer-elementor/assets/css/header-footer-elementora242.css?ver=1.6.11')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/eicons/css/elementor-icons.min7816.css?ver=5.15.0')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-frontend-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/css/frontend-lite.min3ab2.css?ver=3.6.5')); ?>' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-post-3-css'
    href='<?php echo e(asset('assets/uploads/sites/168/elementor/css/post-33ae1.css?ver=1653465152')); ?>' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-global-css'
    href='<?php echo e(asset('assets/uploads/sites/168/elementor/css/global2b42.css?ver=1653465153')); ?>' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-post-7-css'
    href='<?php echo e(asset('assets/uploads/sites/168/elementor/css/post-73edf.css?ver=1653465154')); ?>' type='text/css' media='all' />
  <link rel='stylesheet' id='font-awesome-5-all-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/font-awesome/css/all.min3ab2.css?ver=3.6.5')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='font-awesome-4-shim-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/font-awesome/css/v4-shims.min3ab2.css?ver=3.6.5')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='hfe-widgets-style-css'
    href='<?php echo e(asset('assets/plugins/header-footer-elementor/inc/widgets-css/frontenda242.css?ver=1.6.11')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-post-646-css'
    href='<?php echo e(asset('assets/uploads/sites/168/elementor/css/post-6463edf.css?ver=1653465154')); ?>' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-post-654-css'
    href='<?php echo e(asset('assets/uploads/sites/168/elementor/css/post-6543edf.css?ver=1653465154')); ?>' type='text/css' media='all' />
  <link rel='stylesheet' id='hello-elementor-css' href='<?php echo e(asset('assets/themes/hello-elementor/style.min0875.css?ver=2.5.0')); ?>'
    type='text/css' media='all' />
  <link rel='stylesheet' id='hello-elementor-theme-style-css'
    href='<?php echo e(asset('assets/themes/hello-elementor/theme.min0875.css?ver=2.5.0')); ?>' type='text/css' media='all' />
  <link rel='stylesheet' id='google-fonts-1-css'
    href='https://fonts.googleapis.com/css?family=Playfair+Display%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CHeebo%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&amp;display=auto&amp;ver=5.9.3'
    type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-icons-shared-0-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/font-awesome/css/fontawesome.min52d5.css?ver=5.15.3')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-fa-brands-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/font-awesome/css/brands.min52d5.css?ver=5.15.3')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-jkiticon-css'
    href='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/fonts/jkiticon/jkiticonc4d1.css?ver=2.4.4-dev')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-fa-solid-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/font-awesome/css/solid.min52d5.css?ver=5.15.3')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='elementor-icons-fa-regular-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/font-awesome/css/regular.min52d5.css?ver=5.15.3')); ?>' type='text/css'
    media='all' />
  <script type='text/javascript' src='<?php echo e(asset('assets/js/jquery/jquery.minaf6c.js?ver=3.6.0')); ?>' id='jquery-core-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/js/jquery/jquery-migrate.mind617.js?ver=3.3.2')); ?>' id='jquery-migrate-js'>
  </script>
  <script type='text/javascript'
    src='<?php echo e(asset('assets/plugins/template-kit-export/public/assets/js/template-kit-export-public.min365c.js?ver=1.0.21')); ?>'
    id='template-kit-export-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/elementor/assets/lib/font-awesome/js/v4-shims.min3ab2.js?ver=3.6.5')); ?>'
    id='font-awesome-4-shim-js'></script>
  
  

  <!-- hostline zalo, facebook -->
  <link href='<?php echo e(asset('assets/css/custom.css')); ?>' rel='stylesheet' type='text/css' media='all' />

  <?php echo $__env->yieldContent('style'); ?>

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
      "title": "<?php echo e($pageMeta['title'] ?? setting('site.title')); ?>",
      "description": "<?php echo e($pageMeta['meta_description'] ?? setting('site.description')); ?>",
      "address": {
        "@type": "PostalAddress",
        "addressLocality": "<?php echo e(setting('site.address')); ?>"
      },
      "telephone": "<?php echo e(setting('site.phone')); ?>",
      "email": "<?php echo e(setting('site.email')); ?>"
    }
  </script>
</head>

<body
  class="page-template page-template-elementor_header_footer page page-id-785 ehf-header ehf-footer ehf-template-hello-elementor ehf-stylesheet-hello-elementor jkit-color-scheme elementor-default elementor-template-full-width elementor-kit-3 elementor-page elementor-page-785">

  <?php echo $__env->make('frontend.layouts.partials.loading', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <div id="page" class="hfeed site">
    <?php echo $__env->make('frontend.layouts.partials.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->yieldContent('content'); ?>

    <?php echo $__env->make('frontend.layouts.partials.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  </div>

  <!-- JAVASCRIPT FILES -->
  <link rel='stylesheet' id='magnific-popup-css'
    href='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/magnific-popup/magnific-popupf488.css?ver=1.1.0')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='tiny-slider-css'
    href='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/tiny-slider/tiny-sliderf342.css?ver=2.9.3')); ?>' type='text/css'
    media='all' />
  <link rel='stylesheet' id='e-animations-css'
    href='<?php echo e(asset('assets/plugins/elementor/assets/lib/animations/animations.min3ab2.css?ver=3.6.5')); ?>' type='text/css'
    media='all' />
  <script type='text/javascript' src='<?php echo e(asset('assets/themes/hello-elementor/assets/js/hello-frontend.min8a54.js?ver=1.0.0')); ?>'
    id='hello-theme-frontend-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/elementor/assets/js/webpack.runtime.min3ab2.js?ver=3.6.5')); ?>'
    id='elementor-webpack-runtime-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/elementor/assets/js/frontend-modules.min3ab2.js?ver=3.6.5')); ?>'
    id='elementor-frontend-modules-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/elementor/assets/lib/waypoints/waypoints.min05da.js?ver=4.0.2')); ?>'
    id='elementor-waypoints-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/js/jquery/ui/core.min0028.js?ver=1.13.1')); ?>' id='jquery-ui-core-js'></script>
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
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/elementor/assets/js/frontend.min3ab2.js?ver=3.6.5')); ?>'
    id='elementor-frontend-js'></script>
  <script type='text/javascript' id='elementor-frontend-js-after'>
    var jkit_ajax_url = "indexe2f2.html?jkit-ajax-request=jkit_elements",
      jkit_nonce = "54b830479e";
  </script>
  <script type='text/javascript'
    src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/elements/sticky-elementc4d1.js?ver=2.4.4-dev')); ?>'
    id='jkit-sticky-element-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/elements/nav-menuc4d1.js?ver=2.4.4-dev')); ?>'
    id='jkit-element-navmenu-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/elements/fun-factc4d1.js?ver=2.4.4-dev')); ?>'
    id='jkit-element-funfact-js'></script>
  <script type='text/javascript'
    src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/elements/progress-barc4d1.js?ver=2.4.4-dev')); ?>'
    id='jkit-element-progressbar-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/elements/teamc4d1.js?ver=2.4.4-dev')); ?>'
    id='jkit-element-team-js'></script>
  <script type='text/javascript'
    src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/magnific-popup/jquery.magnific-popup.minf488.js?ver=1.1.0')); ?>'
    id='magnific-popup-js'></script>
  <script type='text/javascript'
    src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/elements/video-buttonc4d1.js?ver=2.4.4-dev')); ?>'
    id='jkit-element-videobutton-js'></script>
  <script type='text/javascript'
    src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/elements/testimonialsc4d1.js?ver=2.4.4-dev')); ?>'
    id='jkit-element-testimonials-js'></script>
  <script type='text/javascript' src='<?php echo e(asset('assets/plugins/jeg-elementor-kit/assets/js/tiny-slider/tiny-sliderf342.js?ver=2.9.3')); ?>'
    id='tiny-slider-js'></script>
  
  

  

  <?php echo $__env->make('frontend.layouts.partials.alert', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <?php echo $__env->yieldContent('js'); ?>
</body>

</html>
<?php /**PATH /home/cudau/domains/cudaudonggia.com/public_html/resources/views/frontend/layouts/default.blade.php ENDPATH**/ ?>