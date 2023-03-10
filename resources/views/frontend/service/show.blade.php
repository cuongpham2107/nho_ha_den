@extends('frontend.layouts.default')

@section('style')
  <style type="text/css">
    img.wp-smiley,
    img.emoji {
      display: inline !important;
      border: none !important;
      box-shadow: none !important;
      height: 1em !important;
      width: 1em !important;
      margin: 0 0.07em !important;
      vertical-align: -0.1em !important;
      background: none !important;
      padding: 0 !important;
    }
  </style>
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
  <link rel='stylesheet' id='elementor-post-502-css'
    href='{{ asset('assets/uploads/sites/168/elementor/css/post-5023597.css?ver=1653499804') }}' type='text/css' media='all' />
@endsection


@section('content')
  <div class="elementor elementor-502">
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-2fb0fad elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="2fb0fad" data-element_type="section"
      data-settings="{&quot;background_background&quot;:&quot;classic&quot;}"
      style="background-image: url({{Voyager::image(json_decode($banner->images)[0] ?? '')}})">
      <div class="elementor-background-overlay"></div>
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-236e939"
          data-id="236e939" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-8bb3270 elementor-widget elementor-widget-jkit_post_title"
              data-id="8bb3270" data-element_type="widget" data-widget_type="jkit_post_title.default">
              <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-post-title jeg_module_502_1_62bbb3aa51613">
                  <h2 class="post-title style-color ">{{$post->title}}</h2>
                </div>
              </div>
            </div>
            {{-- <div
              class="elementor-element elementor-element-3293fd3 elementor-widget__width-auto elementor-view-default elementor-widget elementor-widget-icon"
              data-id="3293fd3" data-element_type="widget" data-widget_type="icon.default">
              <div class="elementor-widget-container">
                <div class="elementor-icon-wrapper">
                  <div class="elementor-icon">
                    <i aria-hidden="true" class="jki jki-user-alt-solid"></i>
                  </div>
                </div>
              </div>
            </div>
            <div
              class="elementor-element elementor-element-09e3056 elementor-widget__width-auto elementor-widget elementor-widget-jkit_post_author"
              data-id="09e3056" data-element_type="widget" data-widget_type="jkit_post_author.default">
              <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-post-author jeg_module_502_2_62bbb3aa53b61"><span
                    class="post-author ">John Doe</span></div>
              </div>
            </div> --}}
            <div
              class="elementor-element elementor-element-6b4e60a elementor-widget__width-auto elementor-view-default elementor-widget elementor-widget-icon"
              data-id="6b4e60a" data-element_type="widget" data-widget_type="icon.default">
              <div class="elementor-widget-container">
                <div class="elementor-icon-wrapper">
                  <div class="elementor-icon">
                    <i aria-hidden="true" class="jki jki-calendar-line"></i>
                  </div>
                </div>
              </div>
            </div>
            <div
              class="elementor-element elementor-element-da343d7 elementor-widget__width-auto elementor-widget elementor-widget-jkit_post_date"
              data-id="da343d7" data-element_type="widget" data-widget_type="jkit_post_date.default">
              <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-post-date jeg_module_502_3_62bbb3aa55b61"><span
                    class="post-date ">{{date('F d, Y', strtotime($post->created_at))}}</span></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-b72bdfd elementor-reverse-tablet elementor-reverse-mobile elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="b72bdfd" data-element_type="section">
      <div class="elementor-container elementor-column-gap-default">
        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-019207f"
          data-id="019207f" data-element_type="column"
          data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div
              class="elementor-element elementor-element-cb36b0f elementor-widget elementor-widget-jkit_post_featured_image"
              data-id="cb36b0f" data-element_type="widget" data-widget_type="jkit_post_featured_image.default">
              <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-post-featured-image jeg_module_502_4_62bbb3aa57be2">
                  <div class="post-featured-image "><img loading="lazy" width="2000" height="1333"
                      src="{{Voyager::image($post->image)}}"
                      class="attachment-full size-full wp-post-image" alt="{{$post->title}}">
                    </div>
                </div>
              </div>
            </div>
            {!! $post->body !!}
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-aa44b71 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="aa44b71" data-element_type="section">
              <div class="elementor-container elementor-column-gap-default">
                {{-- <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-67347a4"
                  data-id="67347a4" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div class="elementor-element elementor-element-63ab1d5 elementor-widget elementor-widget-heading"
                      data-id="63ab1d5" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h5 class="elementor-heading-title elementor-size-default">Tags :
                        </h5>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-882fbd1 elementor-widget__width-auto elementor-view-default elementor-widget elementor-widget-icon"
                      data-id="882fbd1" data-element_type="widget" data-widget_type="icon.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-icon-wrapper">
                          <div class="elementor-icon">
                            <i aria-hidden="true" class="fas fa-tag"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-00a9a5d elementor-widget__width-auto elementor-widget elementor-widget-jkit_post_terms"
                      data-id="00a9a5d" data-element_type="widget" data-widget_type="jkit_post_terms.default">
                      <div class="elementor-widget-container">
                        <div class="jeg-elementor-kit jkit-post-terms jeg_module_502_5_62bbb3aa61f6b">
                          <span class="post-terms"><span class="term-list ">news</span>,<span
                              class="term-list ">tea</span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> --}}
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-017ce31"
                  data-id="017ce31" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div class="elementor-element elementor-element-3ba65e7 elementor-widget elementor-widget-heading"
                      data-id="3ba65e7" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h5 class="elementor-heading-title elementor-size-default">Share :
                        </h5>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-a8a50d2 jkit-social-shape shape-none elementor-widget elementor-widget-jkit_social_share"
                      data-id="a8a50d2" data-element_type="widget" data-widget_type="jkit_social_share.default">
                      <div class="elementor-widget-container">
                        <div class="jeg-elementor-kit jkit-social-share jeg_module_502_6_62bbb3aa64be5">
                          <ul class="social-share-list">
                            <li class="elementor-repeater-item-d872905" data-social="facebook">
                              <a href="https://www.facebook.com/sharer/sharer.php?u={{url()->current()}}" target="_blank" class="facebook social-icon"><i aria-hidden="true" class="fab fa-facebook-f"></i></a>
                            </li>
                            <li class="elementor-repeater-item-642a6cf" data-social="twitter">
                              <a href="https://twitter.com/share?url={{url()->current()}}" target="_blank" class="twitter social-icon"><i aria-hidden="true" class="fab fa-twitter"></i></a>
                            </li>
                            <li class="elementor-repeater-item-3830110" data-social="linkedin">
                              <a href="https://www.linkedin.com/shareArticle?url={{url()->current()}}" target="_blank" class="linkedin social-icon"><i aria-hidden="true" class="fab fa-linkedin-in"></i></a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
            {{-- <div
              class="elementor-element elementor-element-f6c8f0c elementor-widget-divider--view-line elementor-widget elementor-widget-divider"
              data-id="f6c8f0c" data-element_type="widget" data-widget_type="divider.default">
              <div class="elementor-widget-container">
                <style>
                  /*! elementor - v3.6.5 - 27-04-2022 */
                  .elementor-widget-divider {
                    --divider-border-style: none;
                    --divider-border-width: 1px;
                    --divider-color: #2c2c2c;
                    --divider-icon-size: 20px;
                    --divider-element-spacing: 10px;
                    --divider-pattern-height: 24px;
                    --divider-pattern-size: 20px;
                    --divider-pattern-url: none;
                    --divider-pattern-repeat: repeat-x
                  }

                  .elementor-widget-divider .elementor-divider {
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex
                  }

                  .elementor-widget-divider .elementor-divider__text {
                    font-size: 15px;
                    line-height: 1;
                    max-width: 95%
                  }

                  .elementor-widget-divider .elementor-divider__element {
                    margin: 0 var(--divider-element-spacing);
                    -ms-flex-negative: 0;
                    flex-shrink: 0
                  }

                  .elementor-widget-divider .elementor-icon {
                    font-size: var(--divider-icon-size)
                  }

                  .elementor-widget-divider .elementor-divider-separator {
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    margin: 0;
                    direction: ltr
                  }

                  .elementor-widget-divider--view-line_icon .elementor-divider-separator,
                  .elementor-widget-divider--view-line_text .elementor-divider-separator {
                    -webkit-box-align: center;
                    -ms-flex-align: center;
                    align-items: center
                  }

                  .elementor-widget-divider--view-line_icon .elementor-divider-separator:after,
                  .elementor-widget-divider--view-line_icon .elementor-divider-separator:before,
                  .elementor-widget-divider--view-line_text .elementor-divider-separator:after,
                  .elementor-widget-divider--view-line_text .elementor-divider-separator:before {
                    display: block;
                    content: "";
                    border-bottom: 0;
                    -webkit-box-flex: 1;
                    -ms-flex-positive: 1;
                    flex-grow: 1;
                    border-top: var(--divider-border-width) var(--divider-border-style) var(--divider-color)
                  }

                  .elementor-widget-divider--element-align-left .elementor-divider .elementor-divider-separator>.elementor-divider__svg:first-of-type {
                    -webkit-box-flex: 0;
                    -ms-flex-positive: 0;
                    flex-grow: 0;
                    -ms-flex-negative: 100;
                    flex-shrink: 100
                  }

                  .elementor-widget-divider--element-align-left .elementor-divider-separator:before {
                    content: none
                  }

                  .elementor-widget-divider--element-align-left .elementor-divider__element {
                    margin-left: 0
                  }

                  .elementor-widget-divider--element-align-right .elementor-divider .elementor-divider-separator>.elementor-divider__svg:last-of-type {
                    -webkit-box-flex: 0;
                    -ms-flex-positive: 0;
                    flex-grow: 0;
                    -ms-flex-negative: 100;
                    flex-shrink: 100
                  }

                  .elementor-widget-divider--element-align-right .elementor-divider-separator:after {
                    content: none
                  }

                  .elementor-widget-divider--element-align-right .elementor-divider__element {
                    margin-right: 0
                  }

                  .elementor-widget-divider:not(.elementor-widget-divider--view-line_text):not(.elementor-widget-divider--view-line_icon) .elementor-divider-separator {
                    border-top: var(--divider-border-width) var(--divider-border-style) var(--divider-color)
                  }

                  .elementor-widget-divider--separator-type-pattern {
                    --divider-border-style: none
                  }

                  .elementor-widget-divider--separator-type-pattern.elementor-widget-divider--view-line .elementor-divider-separator,
                  .elementor-widget-divider--separator-type-pattern:not(.elementor-widget-divider--view-line) .elementor-divider-separator:after,
                  .elementor-widget-divider--separator-type-pattern:not(.elementor-widget-divider--view-line) .elementor-divider-separator:before,
                  .elementor-widget-divider--separator-type-pattern:not([class*=elementor-widget-divider--view]) .elementor-divider-separator {
                    width: 100%;
                    min-height: var(--divider-pattern-height);
                    -webkit-mask-size: var(--divider-pattern-size) 100%;
                    mask-size: var(--divider-pattern-size) 100%;
                    -webkit-mask-repeat: var(--divider-pattern-repeat);
                    mask-repeat: var(--divider-pattern-repeat);
                    background-color: var(--divider-color);
                    -webkit-mask-image: var(--divider-pattern-url);
                    mask-image: var(--divider-pattern-url)
                  }

                  .elementor-widget-divider--no-spacing {
                    --divider-pattern-size: auto
                  }

                  .elementor-widget-divider--bg-round {
                    --divider-pattern-repeat: round
                  }

                  .rtl .elementor-widget-divider .elementor-divider__text {
                    direction: rtl
                  }
                </style>
                <div class="elementor-divider">
                  <span class="elementor-divider-separator">
                  </span>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-aaf5194 elementor-widget elementor-widget-jkit_post_comment"
              data-id="aaf5194" data-element_type="widget" data-widget_type="jkit_post_comment.default">
              <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-post-comment jeg_module_502_7_62bbb3aa67c13">
                  <section id="comments" class="comments-area">



                    <div id="respond" class="comment-respond">
                      <h2 id="reply-title" class="comment-reply-title">Leave a Reply <small><a rel="nofollow"
                            id="cancel-comment-reply-link" href="index.html#respond" style="display:none;">Cancel
                            reply</a></small></h2>
                      <form action="https://templatekit.jegtheme.com/sometea/wp-comments-post.php" method="post"
                        id="commentform" class="comment-form" novalidate>
                        <p class="comment-notes"><span id="email-notes">Your email address
                            will not be published.</span> <span class="required-field-message"
                            aria-hidden="true">Required
                            fields are marked <span class="required" aria-hidden="true">*</span></span></p>
                        <p class="comment-form-comment"><label for="comment">Comment <span class="required"
                              aria-hidden="true">*</span></label>
                          <textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525" required></textarea>
                        </p>
                        <p class="comment-form-author"><label for="author">Name <span class="required"
                              aria-hidden="true">*</span></label>
                          <input id="author" name="author" type="text" value="" size="30"
                            maxlength="245" required />
                        </p>
                        <p class="comment-form-email"><label for="email">Email <span class="required"
                              aria-hidden="true">*</span></label>
                          <input id="email" name="email" type="email" value="" size="30"
                            maxlength="100" aria-describedby="email-notes" required />
                        </p>
                        <p class="comment-form-url"><label for="url">Website</label> <input id="url"
                            name="url" type="url" value="" size="30" maxlength="200" /></p>
                        <p class="comment-form-cookies-consent"><input id="wp-comment-cookies-consent"
                            name="wp-comment-cookies-consent" type="checkbox" value="yes" /> <label
                            for="wp-comment-cookies-consent">Save
                            my name, email, and website in this browser for the next
                            time I comment.</label></p>
                        <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit"
                            value="Post Comment" /> <input type='hidden' name='comment_post_ID' value='502'
                            id='comment_post_ID' />
                          <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                        </p>
                      </form>
                    </div><!-- #respond -->

                  </section><!-- .comments-area -->
                </div>
              </div>
            </div> --}}
          </div>
        </div>
      </div>
    </section>
  </div>
@endsection
