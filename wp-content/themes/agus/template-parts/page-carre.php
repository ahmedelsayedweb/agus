<?php
/**
 * Template Name: Page contact Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php while ( have_posts() ) : the_post(); ?>
<div class="section-title-page parallax-bg parallax-light">
        <ul class="bg-slideshow">
          <li>
            <div style="background-image:url(<?php bloginfo('template_directory'); ?>/assets/media/1.jpg)" class="bg-slide"></div>
          </li>
        </ul>
        <div class="parallax__inner">
          <div class="container">
            <div class="row">
              <div class="col-sm-7">
                <h1 class="b-title-page"><?php the_title(); ?></h1>
                <div class="b-title-page__info"><?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo 'المقاول المعتمد لخدمات الحراسة الأمنية، وتوفير خدمات أمنية ذات جودة عالية للعديد من المنظمات & الشركات الخاصة'; 
						}elseif($lang == 'en'){
						echo 'The approved contractor of Security Guard services, providing quality security services to many organizations &amp; private companies'; 
					};
				  	?></div>
                <!-- end b-title-page-->
              </div>
            </div>
          </div>
        </div>
      </div>
    	<div class="section-contacts">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="text-center">
                <h2 class="ui-title-block ui-title-block_mod-a"><?php the_content();?></h2>
                <div class="ui-decor-type-1 center-block"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <div class="b-contacts"><i class="b-contacts__icon pe-7s-flag"></i>
                <div class="b-contacts__name color-primary"><?php echo __('location') ?></div>
                <div class="b-contacts__contacts"><?php the_field('location'); ?></div>
              </div>
              <!-- end b-contacts-->
            </div>
            <div class="col-sm-4">
              <div class="b-contacts"><i class="b-contacts__icon pe-7s-call"></i>
                <div class="b-contacts__name color-primary"><?php echo __('phone') ?></div>
                <div class="b-contacts__contacts"><?php the_field('phone'); ?></div>
              </div>
              <!-- end b-contacts-->
            </div>
            <div class="col-sm-4">
              <div class="b-contacts"><i class="b-contacts__icon pe-7s-mail-open"></i>
                <div class="b-contacts__name color-primary"><?php echo __('email') ?></div>
                <div class="b-contacts__contacts"><?php the_field('e-mail'); ?></div>
              </div>
              <!-- end b-contacts-->
            </div>
          </div>
        </div>
      </div>
     <div class="section-default">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo do_shortcode('[contact-form-7 id="132" title="Contact us"]'); 
						}elseif($lang == 'en'){
						echo do_shortcode('[contact-form-7 id="131" title="Contact us"]'); 
					};
				  	?>
            </div>
          </div>
        </div>
      </div>
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>