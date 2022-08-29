<?php
  $banner = \App\Banner::where('type', '404')->first();
?>



<?php $__env->startSection('style'); ?>
<link rel='stylesheet' id='elementor-post-864-css'
  href='<?php echo e(asset('assets/uploads/sites/168/elementor/css/post-864ff49.css?ver=1653884335')); ?>' type='text/css' media='all' />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div data-elementor-type="wp-page" data-elementor-id="864" class="elementor elementor-864">
  <section
    class="elementor-section elementor-top-section elementor-element elementor-element-4575899 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
    data-id="4575899" data-element_type="section"
    data-settings="{&quot;background_background&quot;:&quot;classic&quot;}"
    style="background-image: url(<?php echo e(Voyager::image(json_decode($banner->images)[0] ?? '')); ?>)">
    <div class="elementor-background-overlay"></div>
    <div class="elementor-container elementor-column-gap-no">
      <div
        class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-6984597"
        data-id="6984597" data-element_type="column">
        <div class="elementor-widget-wrap elementor-element-populated">
          <div class="elementor-element elementor-element-469836d elementor-widget elementor-widget-heading"
            data-id="469836d" data-element_type="widget" data-widget_type="heading.default">
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
              <h2 class="elementor-heading-title elementor-size-default">404</h2>
            </div>
          </div>
          <div class="elementor-element elementor-element-06811e5 elementor-widget elementor-widget-heading"
            data-id="06811e5" data-element_type="widget" data-widget_type="heading.default">
            <div class="elementor-widget-container">
              <h2 class="elementor-heading-title elementor-size-default"><?php echo e($banner->title ?? 'Không tìm thấy trang'); ?></h2>
            </div>
          </div>
          <div
            class="elementor-element elementor-element-a18b7f2 elementor-widget-divider--view-line elementor-widget elementor-widget-divider"
            data-id="a18b7f2" data-element_type="widget" data-widget_type="divider.default">
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
          <div class="elementor-element elementor-element-e733da6 elementor-widget elementor-widget-text-editor"
            data-id="e733da6" data-element_type="widget" data-widget_type="text-editor.default">
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
              <?php echo e($banner->description ?? 'Trang bạn đang tìm không tồn tại'); ?>

            </div>
          </div>
          <div
            class="elementor-element elementor-element-46daaf4 elementor-align-center elementor-widget elementor-widget-button"
            data-id="46daaf4" data-element_type="widget" data-widget_type="button.default">
            <div class="elementor-widget-container">
              <div class="elementor-button-wrapper">
                <a href="<?php echo e(route('index')); ?>" class="elementor-button-link elementor-button elementor-size-sm" role="button">
                  <span class="elementor-button-content-wrapper">
                    <span class="elementor-button-text">Trở về trang chủ</span>
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/cathinh/domains/cathinh.kennatech.vn/public_html/resources/views/frontend/pages/404.blade.php ENDPATH**/ ?>