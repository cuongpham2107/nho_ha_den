<?php $__env->startSection('style'); ?>
  <style>
    .mf-input.error {
      border-color: #cf2e2e !important;
    }
    .text_error {
      font-size: 14px;
      padding-top: 5px;
      color: #cf2e2e;
    }
  </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <?php
  $banner_images = json_decode($banner->images);
  ?>
  <div data-elementor-type="wp-page" data-elementor-id="7" class="elementor elementor-7">
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-01eb206 elementor-section-boxed elementor-section-height-default elementor-section-height-default" style="background: none;"
      >
      <img style="margin-top: 75px;" src="<?php echo e(Voyager::image($banner_images[0] ?? '')); ?>" alt="">
    </section>
    
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-4ef28ed elementor-section-full_width elementor-section-height-default elementor-section-height-default"
      data-id="4ef28ed" data-element_type="section">
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-309ccd2"
          data-id="309ccd2" data-element_type="column"
          data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
          <div class="elementor-widget-wrap elementor-element-populated"
            style="background-image: url(<?php echo e(Voyager::image($page1->image)); ?>);">
            <div class="elementor-background-overlay"></div>
            <div class="elementor-element elementor-element-664a1fa elementor-widget elementor-widget-spacer"
              data-id="664a1fa" data-element_type="widget" data-widget_type="spacer.default">
              <div class="elementor-widget-container">
                <style>
                  /*! elementor - v3.6.5 - 27-04-2022 */
                  .e-container.e-container--row .elementor-spacer-inner {
                    width: var(--spacer-size)
                  }

                  .e-container.e-container--column .elementor-spacer-inner,
                  .elementor-column .elementor-spacer-inner {
                    height: var(--spacer-size)
                  }
                </style>
                <div class="elementor-spacer">
                  <div class="elementor-spacer-inner"></div>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-9f0bff5 elementor-widget elementor-widget-heading"
              data-id="9f0bff5" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default"><?php echo e($page1->title); ?></h2>
              </div>
            </div>
            <div
              class="elementor-element elementor-element-90f13c0 elementor-align-center elementor-widget elementor-widget-button"
              data-id="90f13c0" data-element_type="widget" data-widget_type="button.default">
              <div class="elementor-widget-container">
                <div class="elementor-button-wrapper">
                  <a href="<?php echo e(route('pages.show', $page1->slug)); ?>" class="elementor-button-link elementor-button elementor-size-sm" role="button">
                    <span class="elementor-button-content-wrapper">
                      <span class="elementor-button-text">Xem thêm</span>
                    </span>
                  </a>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-2a79fd1 elementor-widget elementor-widget-spacer"
              data-id="2a79fd1" data-element_type="widget" data-widget_type="spacer.default">
              <div class="elementor-widget-container">
                <div class="elementor-spacer">
                  <div class="elementor-spacer-inner"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
       
        <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-2a6f942"
          data-id="2a6f942" data-element_type="column"
          data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
          <div class="elementor-widget-wrap elementor-element-populated"
            style="background-image: url(<?php echo e(Voyager::image($page2->image)); ?>);">
            <div class="elementor-background-overlay"></div>
            <div class="elementor-element elementor-element-e89a95a elementor-widget elementor-widget-spacer"
              data-id="e89a95a" data-element_type="widget" data-widget_type="spacer.default">
              <div class="elementor-widget-container">
                <div class="elementor-spacer">
                  <div class="elementor-spacer-inner"></div>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-0f7eab9 elementor-widget elementor-widget-heading"
              data-id="0f7eab9" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default"><?php echo e($page2->title); ?></h2>
              </div>
            </div>
            <div
              class="elementor-element elementor-element-ca5ae8e elementor-align-center elementor-widget elementor-widget-button"
              data-id="ca5ae8e" data-element_type="widget" data-widget_type="button.default">
              <div class="elementor-widget-container">
                <div class="elementor-button-wrapper">
                  <a href="<?php echo e(route('pages.show', $page2->slug)); ?>" class="elementor-button-link elementor-button elementor-size-sm" role="button">
                    <span class="elementor-button-content-wrapper">
                      <span class="elementor-button-text">Xem thêm</span>
                    </span>
                  </a>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-52006c1 elementor-widget elementor-widget-spacer"
              data-id="52006c1" data-element_type="widget" data-widget_type="spacer.default">
              <div class="elementor-widget-container">
                <div class="elementor-spacer">
                  <div class="elementor-spacer-inner"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-5c34ede"
          data-id="5c34ede" data-element_type="column"
          data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
          <div class="elementor-widget-wrap elementor-element-populated"
            style="background-image: url(<?php echo e(Voyager::image($page3->image)); ?>);">
            <div class="elementor-background-overlay"></div>
            <div class="elementor-element elementor-element-aab2a6e elementor-widget elementor-widget-spacer"
              data-id="aab2a6e" data-element_type="widget" data-widget_type="spacer.default">
              <div class="elementor-widget-container">
                <div class="elementor-spacer">
                  <div class="elementor-spacer-inner"></div>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-e422702 elementor-widget elementor-widget-heading"
              data-id="e422702" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default"><?php echo e($page3->title); ?></h2>
              </div>
            </div>
            <div
              class="elementor-element elementor-element-1f899db elementor-align-center elementor-widget elementor-widget-button"
              data-id="1f899db" data-element_type="widget" data-widget_type="button.default">
              <div class="elementor-widget-container">
                <div class="elementor-button-wrapper">
                  <a href="<?php echo e(route('pages.show', $page3->slug)); ?>" class="elementor-button-link elementor-button elementor-size-sm" role="button">
                    <span class="elementor-button-content-wrapper">
                      <span class="elementor-button-text">Xem thêm</span>
                    </span>
                  </a>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-941039a elementor-widget elementor-widget-spacer"
              data-id="941039a" data-element_type="widget" data-widget_type="spacer.default">
              <div class="elementor-widget-container">
                <div class="elementor-spacer">
                  <div class="elementor-spacer-inner"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-0873ee2 elementor-reverse-tablet elementor-reverse-mobile elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="0873ee2" data-element_type="section">
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-211d45e"
          data-id="211d45e" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-ef5dacd elementor-widget elementor-widget-heading"
              data-id="ef5dacd" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default">Về chúng tôi</h2>
              </div>
            </div>
            <div class="elementor-element elementor-element-c1178f8 elementor-widget elementor-widget-heading"
              data-id="c1178f8" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default"><?php echo e($about->title); ?></h2>
              </div>
            </div>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-b231325 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="b231325" data-element_type="section">
              <div class="elementor-container elementor-column-gap-no">
                <!-- <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-084e0ef"
                  data-id="084e0ef" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-1f17cd2 elementor-widget elementor-widget-jkit_fun_fact"
                      data-id="1f17cd2" data-element_type="widget" data-widget_type="jkit_fun_fact.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-fun-fact align-center hover-from-left elementor-animation- jeg_module_7_1_62bbb2f6c46a0">
                          <div class=fun-fact-inner>
                            <div class="icon elementor-animation-"><i aria-hidden="true"
                                class="jki jki-badge-light"></i></div>
                            <div class="content">
                              <div class="number-wrapper">
                                <span class="number" data-value="<?php echo e(setting('site.experience')); ?>" data-animation-duration="3500">0</span>
                                <sup class="super">+</sup>
                              </div>
                              <h2 class="title">Năm Kinh Nghiệm</h2>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> -->
                <div
                  class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-792ecbb"
                  data-id="792ecbb" data-element_type="column" style="width:100%;">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <!-- <div class="elementor-element elementor-element-55ff231 elementor-widget elementor-widget-heading"
                      data-id="55ff231" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default">Sản phẩm của chúng tôi</h2>
                      </div>
                    </div> -->
                    <div
                      class="elementor-element elementor-element-4872ec9 elementor-widget elementor-widget-text-editor"
                      data-id="4872ec9" data-element_type="widget" data-widget_type="text-editor.default">
                      <div class="elementor-widget-container" style="font-family: 'Font Awesome 5 Free';font-size: 18px;"><?php echo e($about->excerpt); ?></div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
            <!-- <div class="elementor-element elementor-element-4300898 elementor-widget elementor-widget-jkit_progress_bar"
              data-id="4300898" data-element_type="widget" data-widget_type="jkit_progress_bar.default">
              <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-progress-bar jeg_module_7_2_62bbb2f6c7b5e">
                  <div class="progress-group ">
                    <div class="progress-skill-bar">
                      <div class="skill-bar-content"><span class="skill-title">
                          Chất lượng Củ Đậu</span></div>
                      <div class="skill-bar">
                        <div class="skill-track">

                          <div class="number-percentage-wrapper">
                            <span class="number-percentage" data-value="<?php echo e(setting('site.quality')); ?>" data-animation-duration="3500">90%</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="elementor-element elementor-element-484013a elementor-widget elementor-widget-jkit_progress_bar"
              data-id="484013a" data-element_type="widget" data-widget_type="jkit_progress_bar.default">
              <div class="elementor-widget-container">
                <div class="jeg-elementor-kit jkit-progress-bar jeg_module_7_3_62bbb2f6c877e">
                  <div class="progress-group ">
                    <div class="progress-skill-bar">
                      <div class="skill-bar-content"><span class="skill-title">Kỹ năng nhân viên</span></div>
                      <div class="skill-bar">
                        <div class="skill-track">

                          <div class="number-percentage-wrapper">
                            <span class="number-percentage" data-value="<?php echo e(setting('site.skill')); ?>" data-animation-duration="3500">80%</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div> -->
            <div
              class="elementor-element elementor-element-c9048bf elementor-align-left elementor-widget elementor-widget-button"
              data-id="c9048bf" data-element_type="widget" data-widget_type="button.default">
              <div class="elementor-widget-container">
                <div class="elementor-button-wrapper">
                  <a href="<?php echo e(route('about')); ?>" class="elementor-button-link elementor-button elementor-size-sm" role="button">
                    <span class="elementor-button-content-wrapper">
                      <span class="elementor-button-text">Xem thêm</span>
                    </span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-eadfaad"
          data-id="eadfaad" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-44cb80c elementor-widget elementor-widget-image"
              data-id="44cb80c" data-element_type="widget" data-widget_type="image.default">
              <div class="elementor-widget-container">
                <img width="2000" height="1335" src="<?php echo e(Voyager::image($about->image)); ?>"
                  class="attachment-full size-full" alt="Tea ceremony in a tea house" loading="lazy" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <?php if($service != null): ?>
      <section
        class="elementor-section elementor-top-section elementor-element elementor-element-eaeefc3 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
        data-id="eaeefc3" data-element_type="section">
        <div class="elementor-container elementor-column-gap-no">
          <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-8730094"
            data-id="8730094" data-element_type="column">
            <div class="elementor-widget-wrap elementor-element-populated">
              <section
                class="elementor-section elementor-inner-section elementor-element elementor-element-4ad40e1 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                data-id="4ad40e1" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                  <div
                    class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-b22d9ed"
                    data-id="b22d9ed" data-element_type="column"
                    data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                    <div class="elementor-widget-wrap elementor-element-populated">
                      <div class="elementor-element elementor-element-43603c2 elementor-widget elementor-widget-heading"
                        data-id="43603c2" data-element_type="widget" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                          <h2 class="elementor-heading-title elementor-size-default"><?php echo e($service->title); ?></h2>
                        </div>
                      </div>
                      <div
                        class="elementor-element elementor-element-87eec4e elementor-widget elementor-widget-text-editor"
                        data-id="87eec4e" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container"><?php echo e($service->excerpt); ?></div>
                      </div>
                      <div
                        class="elementor-element elementor-element-f25ef06 elementor-align-left elementor-widget elementor-widget-button"
                        data-id="f25ef06" data-element_type="widget" data-widget_type="button.default">
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
              <?php if(isset($services[0])): ?>
              <div class="elementor-element elementor-element-e516211 elementor-widget elementor-widget-jkit_team"
                data-id="e516211" data-element_type="widget" data-widget_type="jkit_team.default">
                <div class="elementor-widget-container">
                  <div class="jeg-elementor-kit jkit-team style-overlay overlay-bottom jeg_module_7_4_62bbb2f6d0c73">
                    <div class="profile-card "><img src="<?php echo e(Voyager::image($services[0]->image)); ?>" alt="Meeting Room"
                        style="height: 580px;">
                      <div class="hover-area alignment-bottom">
                        <div class="profile-body">
                          <h2 class="profile-title"><?php echo e($services[0]->title); ?></h2>
                          <p class="profile-designation"></p>
                          <p class="profile-content"><?php echo e($services[0]->description); ?></p>
                          <ul class="social-list"></ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <?php endif; ?>
            </div>
          </div>
          <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-0c73b2d"
            data-id="0c73b2d" data-element_type="column">
            <div class="elementor-widget-wrap elementor-element-populated">
              <section
                class="elementor-section elementor-inner-section elementor-element elementor-element-670ec71 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                data-id="670ec71" data-element_type="section">
                <div class="elementor-container elementor-column-gap-no">
                  <?php if(isset($services[1])): ?>
                  <div
                    class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-2ddc0a8"
                    data-id="2ddc0a8" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                      <div class="elementor-element elementor-element-ac173fc elementor-widget elementor-widget-jkit_team"
                        data-id="ac173fc" data-element_type="widget" data-widget_type="jkit_team.default">
                        <div class="elementor-widget-container">
                          <div
                            class="jeg-elementor-kit jkit-team style-overlay overlay-bottom jeg_module_7_5_62bbb2f6d38be">
                            <div class="profile-card "><img src="<?php echo e(Voyager::image($services[1]->image)); ?>" alt="Food &amp; Drink">
                              <div class="hover-area alignment-bottom">
                                <div class="profile-body">
                                  <h2 class="profile-title"><?php echo e($services[1]->title); ?></h2>
                                  <p class="profile-designation"></p>
                                  <p class="profile-content"><?php echo e($services[1]->description); ?></p>
                                  <ul class="social-list"></ul>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php endif; ?>
                  <?php if(isset($services[2])): ?>
                  <div
                    class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-9eceac3"
                    data-id="9eceac3" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                      <div class="elementor-element elementor-element-f4afff8 elementor-widget elementor-widget-jkit_team"
                        data-id="f4afff8" data-element_type="widget" data-widget_type="jkit_team.default">
                        <div class="elementor-widget-container">
                          <div
                            class="jeg-elementor-kit jkit-team style-overlay overlay-bottom jeg_module_7_6_62bbb2f6d64ea">
                            <div class="profile-card "><img src="<?php echo e(Voyager::image($services[2]->image)); ?>" alt="Delivery">
                              <div class="hover-area alignment-bottom">
                                <div class="profile-body">
                                  <h2 class="profile-title"><?php echo e($services[2]->title); ?></h2>
                                  <p class="profile-designation"></p>
                                  <p class="profile-content"><?php echo e($services[2]->description); ?></p>
                                  <ul class="social-list"></ul>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php endif; ?>
                </div>
              </section>
              <?php if(isset($services[3])): ?>
                <section
                  class="elementor-section elementor-inner-section elementor-element elementor-element-60dc9a1 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                  data-id="60dc9a1" data-element_type="section">
                  <div class="elementor-container elementor-column-gap-no">
                    <div
                      class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-fa5cd46"
                      data-id="fa5cd46" data-element_type="column">
                      <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-c3e48f9 elementor-widget elementor-widget-jkit_team"
                          data-id="c3e48f9" data-element_type="widget" data-widget_type="jkit_team.default">
                          <div class="elementor-widget-container">
                            <div
                              class="jeg-elementor-kit jkit-team style-overlay overlay-bottom jeg_module_7_7_62bbb2f6d9170">
                              <div class="profile-card "><img src="<?php echo e(Voyager::image($services[3]->image)); ?>" alt="Tea Therapy">
                                <div class="hover-area alignment-bottom">
                                  <div class="profile-body">
                                    <h2 class="profile-title"><?php echo e($services[3]->title); ?></h2>
                                    <p class="profile-designation"></p>
                                    <p class="profile-content"><?php echo e($services[3]->description); ?></p>
                                    <ul class="social-list"></ul>
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
              <?php endif; ?>
            </div>
          </div>
        </div>
      </section>
    <?php endif; ?>

    <?php if($home_mid != null): ?>
      <section
        class="elementor-section elementor-top-section elementor-element elementor-element-770e7b6 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
        data-id="770e7b6" data-element_type="section"
        data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
        <div class="elementor-background-overlay"></div>
        <div class="elementor-container elementor-column-gap-no">
          <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-9ce1277"
            data-id="9ce1277" data-element_type="column">
            <div class="elementor-widget-wrap elementor-element-populated">
              <div class="elementor-element elementor-element-3a9ae9a elementor-widget elementor-widget-heading"
                data-id="3a9ae9a" data-element_type="widget" data-widget_type="heading.default">
                <div class="elementor-widget-container">
                  <h2 class="elementor-heading-title elementor-size-default"><?php echo e($home_mid->title); ?></h2>
                </div>
              </div>
              <div
                class="elementor-element elementor-element-5570ebe elementor-widget__width-initial elementor-widget elementor-widget-text-editor"
                data-id="5570ebe" data-element_type="widget" data-widget_type="text-editor.default">
                <div class="elementor-widget-container">
                  <p><?php echo e($home_mid->description); ?></p>
                </div>
              </div>
              <section
                class="elementor-section elementor-inner-section elementor-element elementor-element-9ab737f elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                data-id="9ab737f" data-element_type="section"
                data-settings="{&quot;background_background&quot;:&quot;video&quot;,&quot;background_video_link&quot;:&quot;<?php echo e($home_mid->link); ?>&quot;,&quot;background_video_start&quot;:3}"
                style="background-image: url(<?php echo e(Voyager::image(json_decode($home_mid->images)[0])); ?>)">
                <div class="elementor-background-video-container elementor-hidden-phone">
                  <div class="elementor-background-video-embed"></div>
                </div>
                <div class="elementor-background-overlay"></div>
                <div class="elementor-container elementor-column-gap-no">
                  <div
                    class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-bfcba5c"
                    data-id="bfcba5c" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                      <div class="elementor-element elementor-element-19273ae elementor-widget elementor-widget-spacer"
                        data-id="19273ae" data-element_type="widget" data-widget_type="spacer.default">
                        <div class="elementor-widget-container">
                          <div class="elementor-spacer">
                            <div class="elementor-spacer-inner"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
              <div class="elementor-element elementor-element-44c2594 elementor-widget elementor-widget-jkit_video_button"
                data-id="44c2594" data-element_type="widget" data-widget_type="jkit_video_button.default">
                <div class="elementor-widget-container">
                  <div class="jeg-elementor-kit jkit-video-button jeg_module_7_8_62bbb2f6de7f5" data-autoplay="0"
                    data-loop="0" data-controls="0" data-type="youtube" data-start="0" data-end="0">
                    <a href="<?php echo e($home_mid->link); ?>" class="jkit-video-popup-btn glow-enable">
                      <span class="icon-position-before"><i aria-hidden="true" class="jki jki-play-button-light"></i></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    <?php endif; ?>

    <?php if($product != null): ?>
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-9eb3728 elementor-reverse-tablet elementor-reverse-mobile elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="9eb3728" data-element_type="section">
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-6a95eb4"
          data-id="6a95eb4" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <?php if(isset($products[0])): ?>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-293d78d elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="293d78d" data-element_type="section">
              <div class="elementor-container elementor-column-gap-default">
                <div
                  class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-ca3b114"
                  data-id="ca3b114" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated"
                    style="background-image: url(<?php echo e(Voyager::image($products[0]->image)); ?>) !important;">
                    <div class="elementor-background-overlay"></div>
                    <div class="elementor-element elementor-element-613bafa elementor-widget elementor-widget-spacer"
                      data-id="613bafa" data-element_type="widget" data-widget_type="spacer.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-spacer">
                          <div class="elementor-spacer-inner"></div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-4753e62 elementor-widget__width-auto elementor-widget elementor-widget-jkit_heading"
                      data-id="4753e62" data-element_type="widget" data-widget_type="jkit_heading.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-heading  align-left align-tablet- align-mobile- jeg_module_7_9_62bbb2f6e1564">
                          <div class="heading-section-title ">
                            <h2 class="heading-title"><?php echo e($products[0]->title); ?></h2>
                          </div>
                          <div class="heading-section-description">
                            <p><?php echo e($products[0]->description); ?></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
            <?php endif; ?>
            <?php if(isset($products[1])): ?>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-520fa3b elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="520fa3b" data-element_type="section">
              <div class="elementor-container elementor-column-gap-default">
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-1d6d36b"
                  data-id="1d6d36b" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated"
                    style="background-image: url(<?php echo e(Voyager::image($products[1]->image)); ?>) !important;">
                    <div class="elementor-background-overlay"></div>
                    <div class="elementor-element elementor-element-d1abb73 elementor-widget elementor-widget-spacer"
                      data-id="d1abb73" data-element_type="widget" data-widget_type="spacer.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-spacer">
                          <div class="elementor-spacer-inner"></div>
                        </div>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-88a1ba1 elementor-widget__width-auto elementor-widget elementor-widget-jkit_heading"
                      data-id="88a1ba1" data-element_type="widget" data-widget_type="jkit_heading.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-heading  align-left align-tablet- align-mobile- jeg_module_7_10_62bbb2f6e6d9a">
                          <div class="heading-section-title ">
                            <h2 class="heading-title"><?php echo e($products[1]->title); ?></h2>
                          </div>
                          <div class="heading-section-description">
                            <p><?php echo e($products[1]->description); ?></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-031317d"
                  data-id="031317d" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated"
                    style="background-image: url(<?php echo e(Voyager::image($products[1]->image)); ?>) !important;">
                    <div class="elementor-background-overlay"></div>
                    <div
                      class="elementor-element elementor-element-7fe366c elementor-align-center elementor-widget elementor-widget-button"
                      data-id="7fe366c" data-element_type="widget" data-widget_type="button.default">
                      <div class="elementor-widget-container">
                        <div class="elementor-button-wrapper">
                          <a href="<?php echo e(route('products.index')); ?>" class="elementor-button-link elementor-button elementor-size-sm"
                            role="button">
                            <span class="elementor-button-content-wrapper">
                              <span class="elementor-button-text">Sản phẩm</span>
                            </span>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>
            <?php endif; ?>
          </div>
        </div>
        <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-81024f9"
          data-id="81024f9" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-93a4b5c elementor-widget elementor-widget-heading"
              data-id="93a4b5c" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default">Sản phẩm của chúng tôi</h2>
              </div>
            </div>
            <div class="elementor-element elementor-element-56e5a7a elementor-widget elementor-widget-heading"
              data-id="56e5a7a" data-element_type="widget" data-widget_type="heading.default">
              <div class="elementor-widget-container">
                <h2 class="elementor-heading-title elementor-size-default"><?php echo e($product->title); ?></h2>
              </div>
            </div>
            <div class="elementor-element elementor-element-e9f99e6 elementor-widget elementor-widget-text-editor"
              data-id="e9f99e6" data-element_type="widget" data-widget_type="text-editor.default">
              <div class="elementor-widget-container"><?php echo e($product->excerpt); ?></div>
            </div>
            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <section
                class="elementor-section elementor-inner-section elementor-element elementor-element-c0e01af elementor-section-boxed elementor-section-height-default elementor-section-height-default"
                data-id="c0e01af" data-element_type="section">
                <div class="elementor-container elementor-column-gap-default">
                  <div
                    class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-2054ce1"
                    data-id="2054ce1" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                      <div
                        style="flex: none"
                        class="elementor-element elementor-element-e60f700 elementor-widget__width-auto elementor-widget elementor-widget-heading"
                        data-id="e60f700" data-element_type="widget" data-widget_type="heading.default">
                        <div class="elementor-widget-container">
                          <h2 class="elementor-heading-title elementor-size-default"><?php echo e($item->title); ?></h2>
                        </div>
                      </div>
                      <div
                        style="flex-grow: 1;width: initial;min-width: 0px;"
                        class="elementor-element elementor-element-73be3b6 elementor-widget__width-initial elementor-widget-tablet__width-initial elementor-widget-mobile__width-initial elementor-widget-divider--view-line elementor-widget elementor-widget-divider"
                        data-id="73be3b6" data-element_type="widget" data-widget_type="divider.default">
                        <div class="elementor-widget-container">

                          <div class="elementor-divider">
                            <span class="elementor-divider-separator">
                            </span>
                          </div>
                        </div>
                      </div>
                      <div
                        style="flex: none"
                        class="elementor-element elementor-element-c10fdca elementor-widget__width-auto elementor-widget elementor-widget-jkit_heading"
                        data-id="c10fdca" data-element_type="widget" data-widget_type="jkit_heading.default">
                        <div class="elementor-widget-container">
                          <div
                            class="jeg-elementor-kit jkit-heading  align-left align-tablet- align-mobile- jeg_module_7_11_62bbb2f6ece64">
                            <div class="heading-section-title ">
                              <h2 class="heading-title"><?php echo e(number_format($item->price, 0, '.', ',')); ?>₫</h2>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div
                        class="elementor-element elementor-element-dd9b14d elementor-widget elementor-widget-text-editor"
                        data-id="dd9b14d" data-element_type="widget" data-widget_type="text-editor.default">
                        <div class="elementor-widget-container">
                          <p><?php echo e($item->description); ?></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </div>
        </div>
      </div>
    </section>
    <?php endif; ?>

    <?php if($report != null): ?>
    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-4189ec8 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="4189ec8" data-element_type="section"
      data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-0bb3e82"
          data-id="0bb3e82" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-5d203e3 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="5d203e3" data-element_type="section">
              <div class="elementor-container elementor-column-gap-no">
                <div
                  class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-2df1a34"
                  data-id="2df1a34" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div class="elementor-element elementor-element-9c43a1a elementor-widget elementor-widget-heading"
                      data-id="9c43a1a" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h5 class="elementor-heading-title elementor-size-default" style="    padding-top: 40px;">
                          Phản hồi của khách hàng</h5>
                      </div>
                    </div>
                    <div class="elementor-element elementor-element-48d7607 elementor-widget elementor-widget-heading"
                      data-id="48d7607" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default"><?php echo e($report->title); ?></h2>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-837587c elementor-widget elementor-widget-text-editor"
                      data-id="837587c" data-element_type="widget" data-widget_type="text-editor.default">
                      <!-- <div class="elementor-widget-container"><?php echo e($report->description); ?></div> -->
                    </div>
                  </div>
                </div>
              </div>
            </section>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-66948c8 animated-slow elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-invisible"
              data-id="66948c8" data-element_type="section"
              data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;animation&quot;:&quot;fadeInLeft&quot;}">
              <div class="elementor-background-overlay"></div>
              <div class="elementor-container elementor-column-gap-no">
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-c066134"
                  data-id="c066134" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div class="elementor-element elementor-element-5c4d45f elementor-widget elementor-widget-image"
                      data-id="5c4d45f" data-element_type="widget" data-widget_type="image.default">
                      <div class="elementor-widget-container">
                        <img width="497" height="497" src="<?php echo e(Voyager::image($report->image)); ?>"
                          class="attachment-full size-full" alt="" loading="lazy"/>
                      </div>
                    </div>
                    <div
                      class="elementor-element elementor-element-91c3ca1 elementor-widget__width-auto elementor-absolute jkit-equal-height-disable elementor-widget elementor-widget-jkit_icon_box"
                      data-id="91c3ca1" data-element_type="widget"
                      data-settings="{&quot;_position&quot;:&quot;absolute&quot;}"
                      data-widget_type="jkit_icon_box.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-icon-box icon-position-top elementor-animation- jeg_module_7_16_62bbb2f710148">
                          <div class="jkit-icon-box-wrapper hover-from-left">
                            <div class="icon-box icon-box-header elementor-animation-">
                              <div class="icon style-color"><i aria-hidden="true" class="jki jki-quote1-light"></i>
                              </div>
                            </div>
                            <div class="icon-box icon-box-body">

                            </div>

                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-b1ae88f"
                  data-id="b1ae88f" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-571f8ee elementor-widget elementor-widget-jkit_testimonials"
                      data-id="571f8ee" data-element_type="widget" data-widget_type="jkit_testimonials.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-testimonials arrow-bottom-middle style-2 quote-override jeg_module_7_17_62bbb2f713a71"
                          data-id="jeg_module_7_17_62bbb2f713a71"
                          data-settings="{&quot;autoplay&quot;:true,&quot;autoplay_speed&quot;:3500,&quot;autoplay_hover_pause&quot;:false,&quot;show_navigation&quot;:false,&quot;navigation_left&quot;:&quot;&lt;i aria-hidden=\&quot;true\&quot; class=\&quot;fas fa-angle-left\&quot;&gt;&lt;\/i&gt;&quot;,&quot;navigation_right&quot;:&quot;&lt;i aria-hidden=\&quot;true\&quot; class=\&quot;fas fa-angle-right\&quot;&gt;&lt;\/i&gt;&quot;,&quot;show_dots&quot;:false,&quot;arrow_position&quot;:&quot;bottom&quot;,&quot;responsive&quot;:{&quot;desktop&quot;:{&quot;items&quot;:1,&quot;margin&quot;:10,&quot;breakpoint&quot;:1025},&quot;tablet&quot;:{&quot;items&quot;:1,&quot;margin&quot;:10,&quot;breakpoint&quot;:768},&quot;mobile&quot;:{&quot;items&quot;:1,&quot;margin&quot;:10,&quot;breakpoint&quot;:0}}}">
                          <div class="testimonials-list">
                            <div class="testimonials-track">
                              <?php $__currentLoopData = $reports; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="testimonial-item  elementor-repeater-item-c83a45a">
                                  <div class="testimonial-box hover-from-left">
                                    <div class="icon-content"><i aria-hidden="true" class="jki jki-quote-left-solid"></i>
                                    </div>
                                    <div class="comment-content">
                                      <p><?php echo e($item->description); ?></p>
                                    </div>
                                    <div class="comment-header">
                                      <ul class="rating-stars">
                                        <li><i aria-hidden="true" class="fas fa-star"></i></li>
                                        <li><i aria-hidden="true" class="fas fa-star"></i></li>
                                        <li><i aria-hidden="true" class="fas fa-star"></i></li>
                                        <li><i aria-hidden="true" class="fas fa-star"></i></li>
                                        <li><i aria-hidden="true" class="fas fa-star"></i></li>
                                      </ul>
                                    </div>
                                    <div class="comment-bio">
                                      <div class="bio-details">
                                        <div class="profile-image"></div>
                                        <span class="profile-info">
                                          <strong class="profile-name"><?php echo e($item->title); ?></strong>
                                          
                                        </span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
    <?php endif; ?>


    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-1b040d7 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="1b040d7" data-element_type="section"
      data-settings="{&quot;background_background&quot;:&quot;classic&quot;}"
      style="background-image: url(<?php echo e(Voyager::image(json_decode($banner_number->images)[0])); ?>)">
      <div class="elementor-background-overlay"></div>
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-24604ef"
          data-id="24604ef" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-588630c elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="588630c" data-element_type="section">
              <div class="elementor-container elementor-column-gap-no">
                <?php $__currentLoopData = $numbers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div
                  class="elementor-column elementor-col-25 elementor-inner-column elementor-element elementor-element-3328229"
                  data-id="3328229" data-element_type="column"
                  data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-53f0a7e elementor-widget elementor-widget-jkit_fun_fact"
                      data-id="53f0a7e" data-element_type="widget" data-widget_type="jkit_fun_fact.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-fun-fact align-center hover-from-left elementor-animation- jeg_module_7_18_62bbb2f716406">
                          <div class=fun-fact-inner>
                            <div class="icon elementor-animation-">
                              <i aria-hidden="true" class="<?php echo e($item->icon); ?>"></i>
                              </div>
                            <div class="content">
                              <div class="number-wrapper">
                                <span class="number" data-value="<?php echo e($item->description); ?>" data-animation-duration="3500">0</span>
                                +
                              </div>
                              <h2 class="title"><?php echo e($item->title); ?></h2>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </div>
            </section>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-da82600 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="da82600" data-element_type="section"
              data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
              <div class="elementor-container elementor-column-gap-no">
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-119f604"
                  data-id="119f604" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <!-- <div class="elementor-element elementor-element-62eb92b elementor-widget elementor-widget-heading"
                      data-id="62eb92b" data-element_type="widget"
                      data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default">
                          Newsletter</h2>
                      </div>
                    </div> -->
                    <div class="elementor-element elementor-element-cbb33e0 elementor-widget elementor-widget-heading"
                      data-id="cbb33e0" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default" style="line-height: 1.8;">
                          Đăng ký nhận tư vấn </h2>
                      </div>
                    </div>
                    
                  </div>
                </div>
                <div
                  class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-9f99f52"
                  data-id="9f99f52" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-621f667 elementor-widget elementor-widget-jkit_mailchimp"
                      data-id="621f667" data-element_type="widget" data-widget_type="jkit_mailchimp.default">
                      <div class="elementor-widget-container">
                        <div class="jeg-elementor-kit jkit-mailchimp style-inline jeg_module_7_22_62bbb2f71d392">
                          <form method="post" action="<?php echo e(route('feedback')); ?>" class="jkit-mailchimp-form">
                            <?php echo csrf_field(); ?>
                            <input type="hidden" name="quick" value="true">
                            
                            <div class="jkit-form-wrapper email-form">
                              <div class="jkit-mailchimp-email jkit-input-wrapper input-container">
                                <div class="jkit-form-group">
                                  <div class="jkit-input-element-container jkit-input-group">
                                    <input type="email" name="email" class="jkit-email jkit-form-control "
                                      placeholder="Email" required="">
                                  </div>
                                </div>
                              </div>
                              <div class="jkit-submit-input-holder jkit-input-wrapper">
                                <button type="submit" class="jkit-mailchimp-submit position-before"
                                  name="jkit-mailchimp">
                                  <i aria-hidden="true" class="fas fa-paper-plane"></i>Gửi liên hệ
                                </button>
                              </div>
                            </div>
                          </form>
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

    <section
      class="elementor-section elementor-top-section elementor-element elementor-element-1355631 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
      data-id="1355631" data-element_type="section">
      <div class="elementor-background-overlay"></div>
      <div class="elementor-container elementor-column-gap-no">
        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-a7dccda"
          data-id="a7dccda" data-element_type="column">
          <div class="elementor-widget-wrap elementor-element-populated">
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-9dad0a5 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="9dad0a5" data-element_type="section">
              <div class="elementor-container elementor-column-gap-no">
                <div
                  class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-f956df8"
                  data-id="f956df8" data-element_type="column">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div class="elementor-element elementor-element-34d5052 elementor-widget elementor-widget-heading"
                      data-id="34d5052" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h5 class="elementor-heading-title elementor-size-default">Tin tức mới nhất
                        </h5>
                      </div>
                    </div>
                    <div class="elementor-element elementor-element-e81af68 elementor-widget elementor-widget-heading"
                      data-id="e81af68" data-element_type="widget" data-widget_type="heading.default">
                      <div class="elementor-widget-container">
                        <h2 class="elementor-heading-title elementor-size-default">Tin tức &
                          Bài viết</h2>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </section>
            <section
              class="elementor-section elementor-inner-section elementor-element elementor-element-faa1ff6 elementor-section-boxed elementor-section-height-default elementor-section-height-default"
              data-id="faa1ff6" data-element_type="section">
              <div class="elementor-container elementor-column-gap-no">
                <div
                  class="elementor-column elementor-col-100 elementor-inner-column elementor-element elementor-element-a80b91e elementor-invisible"
                  data-id="a80b91e" data-element_type="column"
                  data-settings="{&quot;animation&quot;:&quot;fadeInUp&quot;}">
                  <div class="elementor-widget-wrap elementor-element-populated">
                    <div
                      class="elementor-element elementor-element-4213e42 elementor-widget elementor-widget-jkit_post_block"
                      data-id="4213e42" data-element_type="widget" data-widget_type="jkit_post_block.default">
                      <div class="elementor-widget-container">
                        <div
                          class="jeg-elementor-kit jkit-postblock postblock-type-1 jkit-pagination-disable post-element jeg_module_7_23_62bbb2f726785">
                          <div class="jkit-block-container">
                            <div class="jkit-posts jkit-ajax-flag">
                              <?php $__currentLoopData = $posts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <article
                                  class="jkit-post post-1476 post type-post status-publish format-standard has-post-thumbnail hentry category-tea tag-news tag-tea">
                                  <div class="jkit-thumb"><a
                                      href="<?php echo e(route('posts.show', $post->slug)); ?>">
                                      <div class="thumbnail-container ">
                                        <img loading="lazy" width="2000" height="1055"
                                          src="<?php echo e(Voyager::image($post->image)); ?>"
                                          class="attachment-full size-full wp-post-image"
                                          alt="<?php echo e($post->title); ?>" />
                                      </div>
                                    </a></div>
                                  <div class="jkit-postblock-content">
                                    <h3 class="jkit-post-title"><a
                                        href="<?php echo e(route('posts.show', $post->slug)); ?>" style="font-family: 'Font Awesome 5 Free';"><?php echo e($post->title); ?></a></h3>
                                    <div class="jkit-post-meta">
                                      <div class="jkit-meta-date icon-position-before">
                                        <i aria-hidden="true" class="fas fa-clock"></i><?php echo e(date('F d, Y', strtotime($post->created_at))); ?>

                                      </div>
                                    </div>
                                    <div class="jkit-post-excerpt">
                                      <p style="font-family: 'Font Awesome 5 Free';"><?php echo e($post->excerpt); ?></p>
                                    </div>
                                    <div class="jkit-post-meta-bottom">
                                      <div class="jkit-meta-readmore icon-position-after">
                                        <a href="<?php echo e(route('posts.show', $post->slug)); ?>"
                                          class="jkit-readmore">Xem thêm<i aria-hidden="true"
                                            class="jki jki-arrow-right-light"></i></a>
                                      </div>
                                    </div>
                                  </div>
                                </article>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/cudau/domains/cudaudonggia.com/public_html/resources/views/frontend/homepage/index.blade.php ENDPATH**/ ?>