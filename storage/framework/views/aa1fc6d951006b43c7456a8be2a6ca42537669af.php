<?php
  // $menuFields= App\Staticdata::where(['type' => 'linh-vuc-hoat-dong', 'status' => 'ACTIVE'])->get();

  $menu = menu('Home menu', '_json');
?>

<!-- HEADER izi -->
<header id="masthead" itemscope="itemscope" itemtype="https://schema.org/WPHeader">
  <p class="main-title bhf-hidden" itemprop="headline"><a href="<?php echo e(route('index')); ?>"
      title="Sometea" rel="home"><?php echo e(setting('site.title')); ?></a></p>
  <div data-elementor-type="wp-post" data-elementor-id="646" class="elementor elementor-646">
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-bcaa3c6 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="bcaa3c6" data-element_type="section">
      <div class="elementor-container elementor-column-gap-no">
        <div
          class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-7f24b7b"
          data-id="7f24b7b" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-bd03a0f elementor-widget elementor-widget-image"
              data-id="bd03a0f" data-element_type="widget" data-widget_type="image.default">
              <div class="elementor-widget-container">
                <style>
                  /*! elementor - v3.6.5 - 27-04-2022 */
                  .elementor-widget-image {
                    text-align: center
                  }

                  .elementor-widget-image a {
                    display: inline-block
                  }

                  .elementor-widget-image a img[src$=".svg"] {
                    width: 48px
                  }

                  .elementor-widget-image img {
                    vertical-align: middle;
                    display: inline-block
                  }
                </style> <a href="<?php echo e(route('index')); ?>"><img width="755" height="193" src="<?php echo e(Voyager::image(setting('site.logo'))); ?>"
                  class="attachment-full size-full" alt="" loading="lazy"/></a>
              </div>
            </div>
          </div>
        </div>
        <div
          class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-0bbe159"
          data-id="0bbe159" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-3d2b091 elementor-widget elementor-widget-jkit_nav_menu"
              data-id="3d2b091" data-element_type="widget" data-widget_type="jkit_nav_menu.default">
              <div class="elementor-widget-container">
                <div
                  class="jeg-elementor-kit jkit-nav-menu break-point-tablet submenu-click-title jeg_module_7__62bbb2f6adc86"
                  data-item-indicator="&lt;i aria-hidden=&quot;true&quot; class=&quot;fas fa-angle-down&quot;&gt;&lt;/i&gt;">
                  <button class="jkit-hamburger-menu"><i aria-hidden="true" class="fas fa-bars"></i></button>
                  <div class="jkit-menu-wrapper">
                    <div class="jkit-menu-container">
                      <ul id="menu-menu-1" class="jkit-menu jkit-menu-direction-flex jkit-submenu-position-top">
                        <?php $__currentLoopData = $menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li id="menu-item-1095"
                          class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1095">
                          <a href=<?php echo e(url($item->url)); ?>><?php echo e($item->title); ?></a>
                        </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        
                      </ul>
                    </div>
                    <div class="jkit-nav-identity-panel">
                      <div class="jkit-nav-site-title"><a href="index.html" class="jkit-nav-logo"><img
                            src="assets/uploads/sites/168/2021/09/somtea-logo-1.png"></a>
                      </div>
                      <button class="jkit-close-menu"><i aria-hidden="true" class="fas fa-times"></i></button>
                    </div>
                  </div>
                  <div class="jkit-overlay"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div
          class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-199d525 elementor-hidden-tablet elementor-hidden-mobile"
          data-id="199d525" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div
              class="elementor-element elementor-element-59d294f elementor-align-right elementor-widget elementor-widget-button"
              data-id="59d294f" data-element_type="widget" data-widget_type="button.default">
              <div class="elementor-widget-container">
                <div class="elementor-button-wrapper">
                  <a href="<?php echo e(route('contact')); ?>" class="elementor-button-link elementor-button elementor-size-sm"
                    role="button">
                    <span class="elementor-button-content-wrapper">
                      <span class="elementor-button-text">Liên hệ</span>
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
</header><?php /**PATH /home/cudau/domains/cudaudonggia.com/public_html/resources/views/frontend/layouts/partials/header.blade.php ENDPATH**/ ?>