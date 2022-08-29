@extends('frontend.layouts.default')

@section('style')
  <style id='global-styles-inline-css' type='text/css'>
    body {
      --wp--preset--color--black: #000000;
      --wp--preset--color--cyan-bluish-gray: #abb8c3;
      --wp--preset--color--white: #ffffff;
      --wp--preset--color--pale-pink: #f78da7;
      --wp--preset--color--vivid-red: #cf2e2e;
      --wp--preset--color--luminous-vivid-orange: #ff6900;
      --wp--preset--color--luminous-vivid-amber: #fcb900;
      --wp--preset--color--light-green-cyan: #7bdcb5;
      --wp--preset--color--vivid-green-cyan: #00d084;
      --wp--preset--color--pale-cyan-blue: #8ed1fc;
      --wp--preset--color--vivid-cyan-blue: #0693e3;
      --wp--preset--color--vivid-purple: #9b51e0;
      --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%);
      --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%);
      --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%);
      --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%);
      --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%);
      --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%);
      --wp--preset--gradient--blush-light-purple: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%);
      --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%);
      --wp--preset--gradient--luminous-dusk: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%);
      --wp--preset--gradient--pale-ocean: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%);
      --wp--preset--gradient--electric-grass: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%);
      --wp--preset--gradient--midnight: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%);
      --wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');
      --wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');
      --wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');
      --wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');
      --wp--preset--duotone--midnight: url('#wp-duotone-midnight');
      --wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');
      --wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');
      --wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');
      --wp--preset--font-size--small: 13px;
      --wp--preset--font-size--medium: 20px;
      --wp--preset--font-size--large: 36px;
      --wp--preset--font-size--x-large: 42px;
    }

    .has-black-color {
      color: var(--wp--preset--color--black) !important;
    }

    .has-cyan-bluish-gray-color {
      color: var(--wp--preset--color--cyan-bluish-gray) !important;
    }

    .has-white-color {
      color: var(--wp--preset--color--white) !important;
    }

    .has-pale-pink-color {
      color: var(--wp--preset--color--pale-pink) !important;
    }

    .has-vivid-red-color {
      color: var(--wp--preset--color--vivid-red) !important;
    }

    .has-luminous-vivid-orange-color {
      color: var(--wp--preset--color--luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-amber-color {
      color: var(--wp--preset--color--luminous-vivid-amber) !important;
    }

    .has-light-green-cyan-color {
      color: var(--wp--preset--color--light-green-cyan) !important;
    }

    .has-vivid-green-cyan-color {
      color: var(--wp--preset--color--vivid-green-cyan) !important;
    }

    .has-pale-cyan-blue-color {
      color: var(--wp--preset--color--pale-cyan-blue) !important;
    }

    .has-vivid-cyan-blue-color {
      color: var(--wp--preset--color--vivid-cyan-blue) !important;
    }

    .has-vivid-purple-color {
      color: var(--wp--preset--color--vivid-purple) !important;
    }

    .has-black-background-color {
      background-color: var(--wp--preset--color--black) !important;
    }

    .has-cyan-bluish-gray-background-color {
      background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
    }

    .has-white-background-color {
      background-color: var(--wp--preset--color--white) !important;
    }

    .has-pale-pink-background-color {
      background-color: var(--wp--preset--color--pale-pink) !important;
    }

    .has-vivid-red-background-color {
      background-color: var(--wp--preset--color--vivid-red) !important;
    }

    .has-luminous-vivid-orange-background-color {
      background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-amber-background-color {
      background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
    }

    .has-light-green-cyan-background-color {
      background-color: var(--wp--preset--color--light-green-cyan) !important;
    }

    .has-vivid-green-cyan-background-color {
      background-color: var(--wp--preset--color--vivid-green-cyan) !important;
    }

    .has-pale-cyan-blue-background-color {
      background-color: var(--wp--preset--color--pale-cyan-blue) !important;
    }

    .has-vivid-cyan-blue-background-color {
      background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
    }

    .has-vivid-purple-background-color {
      background-color: var(--wp--preset--color--vivid-purple) !important;
    }

    .has-black-border-color {
      border-color: var(--wp--preset--color--black) !important;
    }

    .has-cyan-bluish-gray-border-color {
      border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
    }

    .has-white-border-color {
      border-color: var(--wp--preset--color--white) !important;
    }

    .has-pale-pink-border-color {
      border-color: var(--wp--preset--color--pale-pink) !important;
    }

    .has-vivid-red-border-color {
      border-color: var(--wp--preset--color--vivid-red) !important;
    }

    .has-luminous-vivid-orange-border-color {
      border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-amber-border-color {
      border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
    }

    .has-light-green-cyan-border-color {
      border-color: var(--wp--preset--color--light-green-cyan) !important;
    }

    .has-vivid-green-cyan-border-color {
      border-color: var(--wp--preset--color--vivid-green-cyan) !important;
    }

    .has-pale-cyan-blue-border-color {
      border-color: var(--wp--preset--color--pale-cyan-blue) !important;
    }

    .has-vivid-cyan-blue-border-color {
      border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
    }

    .has-vivid-purple-border-color {
      border-color: var(--wp--preset--color--vivid-purple) !important;
    }

    .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
      background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
    }

    .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
      background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
    }

    .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
      background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
    }

    .has-luminous-vivid-orange-to-vivid-red-gradient-background {
      background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
    }

    .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
      background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
    }

    .has-cool-to-warm-spectrum-gradient-background {
      background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
    }

    .has-blush-light-purple-gradient-background {
      background: var(--wp--preset--gradient--blush-light-purple) !important;
    }

    .has-blush-bordeaux-gradient-background {
      background: var(--wp--preset--gradient--blush-bordeaux) !important;
    }

    .has-luminous-dusk-gradient-background {
      background: var(--wp--preset--gradient--luminous-dusk) !important;
    }

    .has-pale-ocean-gradient-background {
      background: var(--wp--preset--gradient--pale-ocean) !important;
    }

    .has-electric-grass-gradient-background {
      background: var(--wp--preset--gradient--electric-grass) !important;
    }

    .has-midnight-gradient-background {
      background: var(--wp--preset--gradient--midnight) !important;
    }

    .has-small-font-size {
      font-size: var(--wp--preset--font-size--small) !important;
    }

    .has-medium-font-size {
      font-size: var(--wp--preset--font-size--medium) !important;
    }

    .has-large-font-size {
      font-size: var(--wp--preset--font-size--large) !important;
    }

    .has-x-large-font-size {
      font-size: var(--wp--preset--font-size--x-large) !important;
    }
  </style>
  <link rel='stylesheet' id='elementor-post-744-css'
    href='{{asset('assets/uploads/sites/168/elementor/css/post-7441f32.css?ver=1653523944') }}' type='text/css' media='all' />
  <link rel='stylesheet' id='elementor-icons-shared-0-css'
    href='{{asset('assets/plugins/elementor/assets/lib/font-awesome/css/fontawesome.min52d5.css?ver=5.15.3') }}' type='text/css'
    media='all' />
  <script type='text/javascript' src='assets/js/jquery/jquery-migrate.mind617.js?ver=3.3.2') }}' id='jquery-migrate-js'>
  </script>
  <link rel='stylesheet' id='elementor-post-773-css'
    href='{{asset('assets/uploads/sites/168/elementor/css/post-7731f32.css?ver=1653523944') }}' type='text/css' media='all' />
  <link rel='stylesheet' id='metform-ui-css'
		href='{{asset('assets/plugins/metform/public/assets/css/metform-ui784e.css?ver=2.1.6') }}' type='text/css' media='all' />
	<link rel='stylesheet' id='metform-style-css'
		href='{{asset('assets/plugins/metform/public/assets/css/style784e.css?ver=2.1.6') }}' type='text/css' media='all' />
  <style>
    .custom .elementor-widget-icon {
      margin-bottom: 60px !important;
    }
    .custom .elementor-widget-icon .elementor-widget-container {
      position: absolute;
    }

    .elementor-744 .elementor-element.elementor-element-54cedcc > .elementor-container > .elementor-column > .elementor-widget-wrap {
      align-content: flex-start;
    }
    .mf-input.error {
      border-color: #cf2e2e !important;
    }
    .text_error {
      font-size: 14px;
      padding-top: 5px;
      color: #cf2e2e;
    }

    @media (min-width: 1025px) {
      .elementor-widget-wrap.elementor-element-populated .elementor-element.elementor-element-0823ce7.elementor-widget.elementor-widget-google_maps,
      .elementor-widget-wrap.elementor-element-populated .elementor-widget-container,
      .elementor-widget-wrap.elementor-element-populated .elementor-custom-embed,
      .elementor-widget-wrap.elementor-element-populated iframe{
        height: 100% !important;
      }
    }
  </style>
@endsection

@section('content')
  <div data-elementor-type="wp-page" data-elementor-id="744" class="elementor elementor-744">
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-d3fd775 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="d3fd775" data-element_type="section"
      data-settings="{&quot;background_background&quot;:&quot;classic&quot;}"
      style="background-image: url({{Voyager::image(json_decode($banner->images)[0] ?? '')}})">
      <div class="elementor-background-overlay"></div>
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-1c6ee3d"
          data-id="1c6ee3d" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-b96f1ae elementor-widget elementor-widget-heading"
              data-id="b96f1ae" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <style>
                  /*! elementor - v3.6.5 - 27-04-2022 */
                  .elementor-heading-title {
                    padding: 0;
                    margin: 0;
                    line-height: 1
                  }

                  .elementor-widget-heading .elementor-heading-title[class*=elementor-size-]>a {
                    color: inherit;
                    font-size: inherit;
                    line-height: inherit
                  }

                  .elementor-widget-heading .elementor-heading-title.elementor-size-small {
                    font-size: 15px
                  }

                  .elementor-widget-heading .elementor-heading-title.elementor-size-medium {
                    font-size: 19px
                  }

                  .elementor-widget-heading .elementor-heading-title.elementor-size-large {
                    font-size: 29px
                  }

                  .elementor-widget-heading .elementor-heading-title.elementor-size-xl {
                    font-size: 39px
                  }

                  .elementor-widget-heading .elementor-heading-title.elementor-size-xxl {
                    font-size: 59px
                  }
                </style>
                <h2 class="elementor-heading-title elementor-size-default">{{ $banner->title }}</h2>
              </div>
            </div>
            <div class="elementor-element elementor-element-4de695d elementor-widget elementor-widget-text-editor"
              data-id="4de695d" data-element_type="widget" data-widget_type="text-editor.default">
              <div class="elementor-widget-container">
                <style>
                  /*! elementor - v3.6.5 - 27-04-2022 */
                  .elementor-widget-text-editor.elementor-drop-cap-view-stacked .elementor-drop-cap {
                    background-color: #818a91;
                    color: #fff
                  }

                  .elementor-widget-text-editor.elementor-drop-cap-view-framed .elementor-drop-cap {
                    color: #818a91;
                    border: 3px solid;
                    background-color: transparent
                  }

                  .elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap {
                    margin-top: 8px
                  }

                  .elementor-widget-text-editor:not(.elementor-drop-cap-view-default) .elementor-drop-cap-letter {
                    width: 1em;
                    height: 1em
                  }

                  .elementor-widget-text-editor .elementor-drop-cap {
                    float: left;
                    text-align: center;
                    line-height: 1;
                    font-size: 50px
                  }

                  .elementor-widget-text-editor .elementor-drop-cap-letter {
                    display: inline-block
                  }
                </style>
                <p>{{ $banner->description }}</p>
              </div>
            </div>
          </div>
        </div>
        <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-99856ad"
          data-id="99856ad" data-element_type="column">
          <div class="elementor-widget-wrap">
          </div>
        </div>
      </div>
    </section>

    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-26ecbaa elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="26ecbaa" data-element_type="section"
      data-settings="{&quot;background_background&quot;:&quot;classic&quot;}"
      style="background-image: url({{Voyager::image($contact->image ?? '')}})">
      <div class="elementor-background-overlay"></div>
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-39a9ce7"
          data-id="39a9ce7" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-72163d3 elementor-widget elementor-widget-heading"
              data-id="72163d3" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default">Liên hệ</h2>
              </div>
            </div>
            <div class="elementor-element elementor-element-2baed41 elementor-widget elementor-widget-heading"
              data-id="2baed41" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default">Thông tin liên lạc</h2>
              </div>
            </div>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-54cedcc elementor-section-content-bottom elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="54cedcc" data-element_type="section">
              <div class="elementor-container elementor-column-gap-no custom">
                <div
                  class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-2c6be8a"
                  data-id="2c6be8a" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-ab5395a elementor-view-framed elementor-shape-square elementor-widget elementor-widget-icon"
                      data-id="ab5395a" data-element_type="widget" data-widget_type="icon.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-icon-wrapper">
                          <div class="elementor-icon elementor-animation-float">
                            <i aria-hidden="true" class="jki jki-placeholder2-light"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-421fa38 jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                      data-id="421fa38" data-element_type="widget" data-widget_type="jkit_icon_box.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-icon-box icon-position-top elementor-animation- jeg_module_744_1_62bbb3a7c813e">
                          <div class="jkit-icon-box-wrapper hover-from-left">
                            <div class="icon-box icon-box-body">
                              <h3 class="title">Địa chỉ</h3>
                              <p class="icon-box-description">{{setting('site.description')}}</p>
                            </div>

                            <div class=hover-watermark>
                              <i aria-hidden="true" class="jki jki-placeholder2-light"></i>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-ac5f108"
                  data-id="ac5f108" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-16c96bf elementor-view-framed elementor-shape-square elementor-widget elementor-widget-icon"
                      data-id="16c96bf" data-element_type="widget" data-widget_type="icon.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-icon-wrapper">
                          <div class="elementor-icon elementor-animation-float">
                            <i aria-hidden="true" class="jki jki-phone-handset-light"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-584cbbc jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                      data-id="584cbbc" data-element_type="widget" data-widget_type="jkit_icon_box.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-icon-box icon-position-top elementor-animation- jeg_module_744_2_62bbb3a7cbbd3">
                          <div class="jkit-icon-box-wrapper hover-from-left">
                            <div class="icon-box icon-box-body">
                              <h3 class="title">Số điện thoại</h3>
                              <p class="icon-box-description">{{setting('site.phone')}}</p>
                            </div>

                            <div class=hover-watermark>
                              <i aria-hidden="true" class="jki jki-phone-handset-light"></i>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="elementor-column elementor-col-33 elementor-inner-column elementor-element elementor-element-4e31ca0"
                  data-id="4e31ca0" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-b796994 elementor-view-framed elementor-shape-square elementor-widget elementor-widget-icon"
                      data-id="b796994" data-element_type="widget" data-widget_type="icon.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-icon-wrapper">
                          <div class="elementor-icon elementor-animation-float">
                            <i aria-hidden="true" class="jki jki-envelope2-light"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-4fca8d6 jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                      data-id="4fca8d6" data-element_type="widget" data-widget_type="jkit_icon_box.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-icon-box icon-position-top elementor-animation- jeg_module_744_3_62bbb3a7cef8f">
                          <div class="jkit-icon-box-wrapper hover-from-left">
                            <div class="icon-box icon-box-body">
                              <h3 class="title">Email</h3>
                              <p class="icon-box-description">
                                <a href="mailto:{{setting('site.email')}}"
                                  class="__cf_email__">{{setting('site.email')}}</a>
                              </p>
                            </div>

                            <div class=hover-watermark>
                              <i aria-hidden="true" class="jki jki-envelope2-light"></i>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                {{-- <div
                  class="elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-c3a77c7"
                  data-id="c3a77c7" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-3cefa96 elementor-view-framed elementor-shape-square elementor-widget elementor-widget-icon"
                      data-id="3cefa96" data-element_type="widget" data-widget_type="icon.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-icon-wrapper">
                          <div class="elementor-icon elementor-animation-float">
                            <i aria-hidden="true" class="jki jki-clock-line"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-88913ae jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                      data-id="88913ae" data-element_type="widget" data-widget_type="jkit_icon_box.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-icon-box icon-position-top elementor-animation- jeg_module_744_4_62bbb3a7d2243">
                          <div class="jkit-icon-box-wrapper hover-from-left">
                            <div class="icon-box icon-box-body">
                              <h3 class="title">Opening Hours</h3>
                              <p class="icon-box-description">Mon - Fri: 9 AM to 10 PM
                                | Sat - Sun: 8 AM to 11 PM</p>
                            </div>

                            <div class=hover-watermark>
                              <i aria-hidden="true" class="jki jki-clock-line"></i>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> --}}
              </div>
            </section>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-ba97041 elementor-reverse-tablet elementor-reverse-mobile elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="ba97041" data-element_type="section">
              <div class="elementor-container elementor-column-gap-default">
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-88e72d7"
                  data-id="88e72d7" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-0823ce7 elementor-widget elementor-widget-google_maps"
                      data-id="0823ce7" data-element_type="widget" data-widget_type="google_maps.default">
                      <div class="elementor-widget-container">
                        <style>
                          /*! elementor - v3.6.5 - 27-04-2022 */
                          .elementor-widget-google_maps .elementor-widget-container {
                            overflow: hidden
                          }

                          .elementor-widget-google_maps iframe {
                            height: 300px
                          }
                        </style>
                        <div class="elementor-custom-embed">
                          {!! setting('site.map') !!}
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-a6c4764"
                  data-id="a6c4764" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div class="elementor-element elementor-element-b29d923 elementor-widget elementor-widget-metform"
                      data-id="b29d923" data-element_type="widget" data-widget_type="metform.default">
                      <div class="elementor-widget-container">
                        <div id="mf-response-props-id-773" data-editswitchopen=""
                          data-erroricon="fas fa-exclamation-triangle" data-successicon="fas fa-check"
                          data-messageposition="top" class="   mf-scroll-top-no">
                          <div class="formpicker_warper formpicker_warper_editable" data-metform-formpicker-key="773">

                            <div class="elementor-widget-container">

                              <div id="metform-wrap-b29d923-773" class="mf-form-wrapper" data-form-id="773"
                                data-action="https://templatekit.jegtheme.com/sometea/wp-json/metform/v1/entries/insert/773"
                                data-wp-nonce="dac715be87" data-form-nonce="a3309b1bf5" data-stop-vertical-effect="">
                                <form class="metform-form-content" method="post" action="{{route('feedback')}}">
                                  @csrf
                                  <div class="mf-main-response-wrap   mf-response-msg-wrap" data-show="0">
                                    <div class="mf-response-msg"></div>
                                  </div>
                                  <div class="metform-form-main-wrapper">
                                    <div data-elementor-type="wp-post" data-elementor-id="773"
                                      class="elementor elementor-773">
                                      <section
                                        class="elementor-section elementor-top-section elementor-element elementor-element-d7472b1 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                                        data-id="d7472b1" data-element_type="section"
                                        data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                                        <div class="elementor-container elementor-column-gap-default">
                                          <div
                                            class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-c4b690d"
                                            data-id="c4b690d" data-element_type="column">
                                            <div class="elementor-widget-wrap elementor-element-populated">
                                              <div
                                                class="elementor-element elementor-element-2f85c9d elementor-widget elementor-widget-heading"
                                                data-id="2f85c9d" data-element_type="widget"
                                                data-widget_type="heading.default">
                                                <div class="elementor-widget-container">
                                                  <h2 class="elementor-heading-title elementor-size-default">Liên hệ
                                                  </h2>
                                                </div>
                                              </div>
                                              <div
                                                class="elementor-element elementor-element-6e76662 elementor-widget elementor-widget-heading"
                                                data-id="6e76662" data-element_type="widget"
                                                data-widget_type="heading.default">
                                                <div class="elementor-widget-container">
                                                  <h2 class="elementor-heading-title elementor-size-default">{{$contact->title ?? 'Để lại thông tin'}}</h2>
                                                </div>
                                              </div>
                                              <div
                                                class="elementor-element elementor-element-c49e462 elementor-widget elementor-widget-text-editor"
                                                data-id="c49e462" data-element_type="widget"
                                                data-widget_type="text-editor.default">
                                                <div class="elementor-widget-container">
                                                  <p>{{$contact->excerpt ?? ''}}</p>
                                                </div>
                                              </div>
                                              <section
                                                class="elementor-section elementor-inner-section elementor-element elementor-element-1780af7 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                                                data-id="1780af7" data-element_type="section">
                                                <div class="elementor-container elementor-column-gap-default">
                                                  <div
                                                    class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-de15f81"
                                                    data-id="de15f81" data-element_type="column">
                                                    <div class="elementor-widget-wrap elementor-element-populated">
                                                      <div
                                                        class="elementor-element elementor-element-42b6091 elementor-widget elementor-widget-mf-text"
                                                        data-id="42b6091" data-element_type="widget"
                                                        data-settings="{&quot;mf_input_name&quot;:&quot;mf-text&quot;}"
                                                        data-widget_type="mf-text.default">
                                                        <div class="elementor-widget-container">
                                                          <div class="mf-input-wrapper">
                                                            <input type="text"
                                                              class="mf-input @error('name') error @enderror" id="mf-input-text-42b6091"
                                                              name="name" placeholder="Tên bạn" value="{{request()->name ?? ''}}"
                                                              aria-invalid="false" >
                                                              @error('name')<p class="text_error">Tên không được để trống</p>@enderror
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </section>
                                              <section
                                                class="elementor-section elementor-inner-section elementor-element elementor-element-2242b57 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                                                data-id="2242b57" data-element_type="section">
                                                <div class="elementor-container elementor-column-gap-default">
                                                  <div
                                                    class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-7c673bd"
                                                    data-id="7c673bd" data-element_type="column">
                                                    <div class="elementor-widget-wrap elementor-element-populated">
                                                      <div
                                                        class="elementor-element elementor-element-4eb0fe2 elementor-widget elementor-widget-mf-email"
                                                        data-id="4eb0fe2" data-element_type="widget"
                                                        data-settings="{&quot;mf_input_name&quot;:&quot;mf-email&quot;}"
                                                        data-widget_type="mf-email.default">
                                                        <div class="elementor-widget-container">
                                                          <div class="mf-input-wrapper">
                                                            <input type="email"
                                                              class="mf-input @error('email') error @enderror" id="mf-input-email-4eb0fe2"
                                                              name="email" placeholder="Email" value="{{request()->email ?? ''}}"
                                                              aria-invalid="false">
                                                            @error('email')<p class="text_error">Email không đúng định dạng</p>@enderror
                                                            </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div
                                                    class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-ec1ebfb"
                                                    data-id="ec1ebfb" data-element_type="column">
                                                    <div class="elementor-widget-wrap elementor-element-populated">
                                                      <div
                                                        class="elementor-element elementor-element-6cd8879 elementor-widget elementor-widget-mf-telephone"
                                                        data-id="6cd8879" data-element_type="widget"
                                                        data-settings="{&quot;mf_input_name&quot;:&quot;mf-telephone&quot;}"
                                                        data-widget_type="mf-telephone.default">
                                                        <div class="elementor-widget-container">
                                                          <div class="mf-input-wrapper">
                                                            <input type="tel"
                                                              class="mf-input @error('phone') error @enderror" id="mf-input-telephone-6cd8879"
                                                              name="phone" placeholder="Điện thoại" value="{{request()->phone ?? ''}}"
                                                              aria-invalid="false">
                                                              @error('phone')<p class="text_error">Số điện thoại không đúng</p>@enderror
                                                            </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </section>
                                              <div
                                                class="elementor-element elementor-element-d6274aa elementor-widget elementor-widget-mf-textarea"
                                                data-id="d6274aa" data-element_type="widget"
                                                data-settings="{&quot;mf_input_name&quot;:&quot;mf-textarea&quot;}"
                                                data-widget_type="mf-textarea.default">
                                                <div class="elementor-widget-container">
                                                  <div class="mf-input-wrapper">
                                                    <textarea class="mf-input mf-textarea " id="mf-input-text-area-d6274aa" name="content"
                                                      placeholder="Tin nhắn" cols="30" rows="10" aria-invalid="false"></textarea>
                                                  </div>
                                                </div>
                                              </div>
                                              <div
                                                class="elementor-element elementor-element-8c36c26 mf-btn--justify mf-btn--tablet-justify mf-btn--mobile-justify elementor-widget elementor-widget-mf-button"
                                                data-id="8c36c26" data-element_type="widget"
                                                data-widget_type="mf-button.default">
                                                <div class="elementor-widget-container">
                                                  <div class="mf-btn-wraper "
                                                    data-mf-form-conditional-logic-requirement=""><button
                                                      type="submit" class="metform-btn metform-submit-btn "
                                                      id=""><span>Gửi liên hệ</span></button></div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </section>
                                    </div>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection


@section('js')

@endsection