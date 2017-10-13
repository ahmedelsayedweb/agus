<?php
/**
 * Template Name: Page service Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $title_page_about = ot_get_option( 'title_page_about' );
	  $description_page_about = ot_get_option( 'description_page_about' );
	}
    ?>
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
    	 <section style="background-image: url(<?php bloginfo('template_directory'); ?>/assets/media/components/b-advantages-1/bg-1.jpg)" data-jarallax="{&quot;type&quot;: &quot;scroll-opacity&quot;}" class="b-advantages-1 section-default section-bg section-bg_primary jarallax">
        <div class="section__inner">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <h2 class="b-advantages-1__title ui-title-block"><?php the_field('title_why'); ?></h2>
                <div class="b-advantages-1__subtitle ui-subtitle-block"><?php the_field('description_why'); ?></div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-4">
                <section class="b-advantages-1-item"><span class="b-advantages-1-item__decor"></span><i class="b-advantages-1-item__icon pe-7s-pin"></i>
                  <h3 class="b-advantages-1-item__title"><?php the_field('title_1'); ?></h3>
                  <div class="b-advantages-1-item__text">
                    <p><?php the_field('description_1'); ?></p>
                  </div>
                </section>
              </div>
              <div class="col-sm-4">
                <section class="b-advantages-1-item"><span class="b-advantages-1-item__decor"></span><i class="b-advantages-1-item__icon pe-7s-airplay"></i>
                  <h3 class="b-advantages-1-item__title"><?php the_field('title_2'); ?></h3>
                  <div class="b-advantages-1-item__text">
                    <p><?php the_field('description_2'); ?></p>
                  </div>
                </section>
              </div>
              <div class="col-sm-4">
                <section class="b-advantages-1-item"><i class="b-advantages-1-item__icon pe-7s-diamond"></i>
                  <h3 class="b-advantages-1-item__title"><?php the_field('title_3'); ?></h3>
                  <div class="b-advantages-1-item__text">
                    <p><?php the_field('description_3'); ?></p>
                  </div>
                </section>
              </div>
            </div>
          </div>
        </div>
      </section>
<div class="section-type-a">
        <div class="container">
          <div class="row">
            <div class="col-sm-7">
              <section class="b-type-a"><span class="b-type-a__icon">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="47px" height="50px" viewBox="0 0 47 50">
                    <path fillRule="evenodd" d="M 43.91 12.08C 42.11 14.87 39.65 17.12 36.75 18.66 36.29 25.08 31.32 30.26 25.03 31 25.03 31 25.03 38.1 25.03 38.1 30.44 38.73 34.98 42.65 36.36 48.07 36.36 48.07 36.86 50 36.86 50 36.86 50 10.14 50 10.14 50 10.14 50 10.64 48.07 10.64 48.07 12.02 42.65 16.56 38.73 21.97 38.1 21.97 38.1 21.97 31 21.97 31 15.68 30.26 10.71 25.08 10.25 18.66 7.35 17.12 4.89 14.87 3.09 12.08 1.07 8.95 0 5.3 0 1.55 0 1.55 0-0 0-0 0-0 47-0 47-0 47-0 47 1.55 47 1.55 47 5.3 45.93 8.95 43.91 12.08ZM 10.22 3.09C 10.22 3.09 3.14 3.09 3.14 3.09 3.6 7.94 6.23 12.34 10.22 15.04 10.22 15.04 10.22 3.09 10.22 3.09ZM 14.31 46.91C 14.31 46.91 32.69 46.91 32.69 46.91 31.01 43.41 27.47 41.11 23.5 41.11 19.53 41.11 15.99 43.41 14.31 46.91ZM 33.72 3.09C 33.72 3.09 13.28 3.09 13.28 3.09 13.28 3.09 13.28 17.69 13.28 17.69 13.28 23.37 17.87 27.99 23.5 27.99 29.13 27.99 33.72 23.37 33.72 17.69 33.72 17.69 33.72 3.09 33.72 3.09ZM 36.78 3.09C 36.78 3.09 36.78 15.04 36.78 15.04 40.77 12.34 43.4 7.94 43.86 3.09 43.86 3.09 36.78 3.09 36.78 3.09ZM 27.3 20.48C 27.3 20.48 23.5 18.77 23.5 18.77 23.5 18.77 19.7 20.48 19.7 20.48 19.7 20.48 20.14 16.31 20.14 16.31 20.14 16.31 17.35 13.19 17.35 13.19 17.35 13.19 21.42 12.32 21.42 12.32 21.42 12.32 23.5 8.68 23.5 8.68 23.5 8.68 25.57 12.32 25.57 12.32 25.57 12.32 29.65 13.19 29.65 13.19 29.65 13.19 26.86 16.31 26.86 16.31 26.86 16.31 27.3 20.48 27.3 20.48Z" fill="rgb(51,51,51)"></path>
                  </svg></span>
                <div class="b-type-a__inner">
                  <h2 class="b-type-a__title"><?php the_field('title_best'); ?></h2>
                  <div class="b-type-a__text"><?php the_field('description_best'); ?></div>
                </div>
              </section>
              <!-- end b-type-a-->
              <?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_c = ot_get_option( 'title_c' );
		  $phone_c = ot_get_option( 'phone_c' );
		  $email_c = ot_get_option( 'email_c' );
		}
    ?>
            </div>
            <div class="col-sm-5">
              <div class="b-contact-banner">
                <div class="border-2-colors">
                  <div class="b-contact-banner__inner">
                    <h3 class="b-contact-banner__title"><?php echo $title_c; ?></h3>
                    <div class="b-contact-banner__decor ui-decor-type-3 center-block"></div>
                    <div class="b-contact-banner__info b-contact-banner__info_lg"><?php echo $phone_c; ?></div>
                    <div class="b-contact-banner__info"><?php echo $email_c; ?></div>
                  </div>
                </div>
              </div>
              <!-- end b-contact-banner-->
            </div>
          </div>
        </div>
      </div>
<?php
	$args = array(
			'post_type' => 'services2',
			'posts_per_page' => 6,
	);
	$news_query = new WP_Query( $args );
		 ?>
	<?php if ( $news_query->have_posts() ) : ?>
	<div class="section-default section_border-bottom">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="text-center">
                <h2 class="ui-title-block"><?php the_field('title_what'); ?></h2>
                <div class="ui-subtitle-block"><?php the_field('description_what'); ?></div>
                <div class="ui-decor-type-1 center-block"></div>
              </div>
              <ul class="b-advantages-2">
				  <?php $i = 1; ?>
	<?php while ($news_query->have_posts()) : $news_query->the_post(); ?>
				<li class="b-advantages-2__item">
							<?php the_field('icon'); ?>
                  <div class="b-advantages-2__inner">
                    <div class="b-advantages-2__name"><?php the_title() ?></div>
                    <div class="b-advantages-2__text"><?php the_excerpt(); ?></div>
					  <a href="<?php echo get_permalink(); ?>" class="b-advantages-2__link btn-link">
						  <?php echo __('read details');?></a>
                  </div>
                </li>
				  <?php $i++;	?>
		<?php endwhile; endif; ?>
				</ul>
              <!-- end b-advantages-2-->
            </div>
          </div>
        </div>
      </div>
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>