<?php
/**
 * Template Name: Page Home Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
    	<!-- WRAPPER-->
            <div id="wrapper-content">
<div id="main-slider" data-slider-width="100%" data-slider-height="400px" data-slider-arrows="true" class="main-slider main-slider_mod-a slider-pro">
        <div class="sp-slides">
          <?php 
		if ( function_exists( 'ot_get_option' ) ) {			
		  $slides = ot_get_option( 'banner', array() );	
			$title_slider = ot_get_option( 'title_slider' );
			$link_slider = ot_get_option( 'link_slider' );
		  if ( ! empty( $slides ) ) {
			foreach( $slides as $slide ) {
			  echo '
			  <div class="sp-slide">
			  <img src="' . $slide['image'] . '" alt="slider" class="sp-image"/>
				<div class="container">
				  <div class="row">
					<div class="col-md-7 col-sm-10 col-sm-offset-1">
					  <h2 data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="main-slider__title sp-layer">' . $slide['title'] . '</h2>
					  <div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="main-slider__info sp-layer">' . $slide['description'] . '</div>
					  <div data-width="100%" data-show-transition="left" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400" class="sp-layer"><a href="' . $slide['link'] . '" class="main-slider__btn btn btn-primary btn-sm btn-effect">'?>
			<?php echo __('view services');?><?php echo '</a>
					  </div>
					</div>
				  </div>
				</div>
			</div>';
			}
		  }
		}	
	  ?>
        </div>
      </div>
	<!-- PAGE WRAPPER-->
	<section class="section-default">
        <div class="container">
          <div class="row">
	 <?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_about = ot_get_option( 'title_about' );
		  $description_about = ot_get_option( 'description_about' );
		}
    ?>
            <div class="col-xs-12">
              <div class="text-center">
                <h2 class="ui-title-block"><?php echo $title_about; ?></h2>
                <div class="ui-subtitle-block"><?php echo $description_about; ?></div>
                <div class="ui-decor-type-1 center-block"></div>
              </div>
            </div>
            <div class="col-xs-12">
              <ul class="b-advantages-3">
                
			<?php 
				if ( function_exists( 'ot_get_option' ) ) {
					$items = ot_get_option( 'item_about', array() );
					if ( ! empty( $items ) ) {
						foreach( $items as $item ) {
							echo '
							<li class="b-advantages-3__item">
							<a href="' . $item['link'] . '">
							<div class="b-advantages-3__inner">' . $item['icons'] . '
							<div class="b-advantages-3__title">' . $item['title'] . '</div>
							</div>
							<div class="b-advantages-3__text">' . $item['description'] . '</div>
							</a>
							 </li>';
						}
					  }

					}
				?>
               
              </ul>
              <!-- end b-advantages-3-->
            </div>
          </div>
        </div>
      </section>
	<?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_type = ot_get_option( 'title_type' );
		  $description_type = ot_get_option( 'description_type' );
		  $title_c = ot_get_option( 'title_c' );
		  $phone_c = ot_get_option( 'phone_c' );
		  $email_c = ot_get_option( 'email_c' );
		}
    ?>
	<div class="section-type-b section-bg section-bg_primary section-bg_light">
        <div class="section__inner">
          <div class="container">
            <div class="row">
              <div class="col-sm-7">
                <section class="b-type-e">
                  <h2 class="b-type-e__title ui-title-inner-1"><?php echo $title_type; ?></h2>
                  <div class="b-type-e__text">
                    <p><?php echo $description_type; ?></p>
                  </div>
                </section>
                <!-- end b-type-e-->
              </div>
              <div class="col-sm-5">
                <div class="b-contact-banner b-contact-banner_mod-a">
                  <div class="b-contact-banner__border"></div>
                  <div class="b-contact-banner__inner">
                    <h3 class="b-contact-banner__title"><?php echo $title_c; ?></h3>
                    <div class="b-contact-banner__decor ui-decor-type-3 center-block"></div>
                    <div class="b-contact-banner__info b-contact-banner__info_lg">
						<?php echo $phone_c; ?></div>
                    <div class="b-contact-banner__info"><?php echo $email_c; ?></div>
                  </div>
                </div>
                <!-- end b-contact-banner-->
              </div>
            </div>
          </div>
        </div>
      </div>
	<div class="section-default section-default_top-padd">
        <div class="b-progress">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <ul class="b-progress-list b-progress-list_mod-a list-unstyled">
					<?php 
				if ( function_exists( 'ot_get_option' ) ) {
					$items = ot_get_option( 'progress', array() );
					if ( ! empty( $items ) ) {
						foreach( $items as $item ) {
							echo '
							<li class="b-progress-list__item clearfix">
							<div class="b-progress-list__label">'?>
					<?php echo __('more than');?>
					<?php echo '
					</div>
				  <span data-percent="' . $item['nub_progress'] . '" class="b-progress-list__percent js-chart"><span class="js-percent"></span>
				  </span>
				  <span class="b-progress-list__name">' . $item['title'] . '</span>
						  </li>';
					}
				}
			}
		?> 
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- end b-progress-->
      </div>
	<?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_video = ot_get_option( 'title_video' );
		  $description_video = ot_get_option( 'description_video' );
		  $video = ot_get_option( 'video_video' );
		  $img_video = ot_get_option( 'img_video' );
		}
    ?>
	<div class="section-type-e wow">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <section class="b-type-b b-type-b_mod-a">
                <div class="b-type-b__media">
                  <div class="b-type-b__media-title">Watch the tour</div>
                  <div class="b-video player fixed-controls play-button">
                    <video poster="<?php echo $img_video; ?>">
                      <source src="<?php echo $video; ?>" type="video/mp4"/>
                    </video>
                  </div>
                </div>
                <div class="b-type-b__inner">
                  <h2 class="b-type-b__title ui-title-inner-1"><?php echo $title_video; ?></h2>
                  <div class="b-type-b__text"><?php echo $description_video; ?></div>
                </div>
              </section>
              <!-- end b-type-b-->
              
            </div>
          </div>
        </div>
      </div>
	<?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_offers = ot_get_option( 'title_offers' );
		  $description_offers = ot_get_option( 'description_offers' );
		}
    ?>
	<div class="section-default section_border-bottom">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="text-center">
                <h2 class="ui-title-block"><?php echo $title_offers; ?></h2>
                <div class="ui-subtitle-block"><?php echo $description_offers; ?></div>
                <div class="ui-decor-type-1 center-block"></div>
              </div>
              <ul class="b-advantages-2">
				  <?php 
				if ( function_exists( 'ot_get_option' ) ) {
					$items = ot_get_option( 'offers', array() );
					if ( ! empty( $items ) ) {
						foreach( $items as $item ) {
							echo '
							<li class="b-advantages-2__item">
							' . $item['icons'] . '
                  <div class="b-advantages-2__inner">
                    <div class="b-advantages-2__name">' . $item['title'] . '</div>
                    <div class="b-advantages-2__text">' . $item['description_offer'] . '</div><a href="' . $item['link_offer'] . '" class="b-advantages-2__link btn-link">'?><?php echo __('read details');?><?php echo'</a>
                  </div>
                </li>';
				}
			}
		}
	?> 
              </ul>
              <!-- end b-advantages-2-->
            </div>
          </div>
        </div>
      </div>
		<?php
		$args = array(
				'post_type' => 'gallery',
				'posts_per_page' => 4,
		);
		$team_query = new WP_Query( $args );
			 ?>
		<?php if ( $team_query->have_posts() ) : ?>		
		<div class="section-default section_border-bottom">
        <div class="b-gallery-1">
          <div class="js-zoom-gallery js-scroll-content">
			   <?php $i = 1; ?>
				<?php while ($team_query->have_posts()) : $team_query->the_post(); ?>
            <div class="b-gallery-1__item">
				<a href="<?php the_post_thumbnail_url(); ?>" class="js-zoom-gallery__item">
					<img src="<?php the_post_thumbnail_url(); ?>" alt="foto" class="img-responsive"/>
				</a>
			  </div>
			  <?php $i++;	?>
			<?php endwhile; endif; ?>
			  </div>
			<a href="">
				<span class="b-gallery-1__btn js-scroll-next btn btn-default btn-sm btn-effect"><?php echo __('More Images') ?></span></a>
          </div>
        </div>
        <!-- end b-gallery-1-->
        
      </div>
	<?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_team = ot_get_option( 'title_team' );
		  $description_team = ot_get_option( 'description_team' );
		}
    ?>
	<div class="section-default section-default_top-padd">
        <div class="container">
          <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
              <div class="text-center">
                <h2 class="ui-title-block"><?php echo $title_team; ?></h2>
                <div class="ui-subtitle-block"><?php echo $description_team; ?></div>
                <div class="ui-decor-type-1 center-block"></div>
              </div>
				<?php
						$args = array(
								'post_type' => 'team',
								'posts_per_page' => 2,
						);
						$team_query = new WP_Query( $args );
							 ?>
						<?php if ( $team_query->have_posts() ) : ?>
              <div id="owl-hero" data-pagination="true" data-navigation="false" data-single-item="true" data-auto-play="7000" data-transition-style="fade" data-main-text-animation="true" data-after-init-delay="3000" data-after-move-delay="1000" data-stop-on-hover="true" class="owl-carousel owl-theme enable-owl-carousel">
				  <?php $i = 1; ?>
							<?php while ($team_query->have_posts()) : $team_query->the_post(); ?>
                <div class="b-reviews-2 b-reviews-2_mod-a">
                  <div class="blockquote__img center-block">
					  <img src="<?php the_post_thumbnail_url(); ?>" alt="foto" class="img-responsive"/>
					</div>
                  
                   <?php the_content();?>
                  
                </div>
                <!-- end b-reviews-->
                <?php $i++;	?>
			<?php endwhile; endif; ?>    
              </div>
            </div>
          </div>
        </div>
      </div>
	<?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_news = ot_get_option( 'title_news' );
		  $description_news = ot_get_option( 'description_news' );
		}
    ?>
	<div class="section-default section-news">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="text-center">
                <h2 class="ui-title-block"><?php echo $title_news; ?></h2>
                <div class="ui-subtitle-block"><?php echo $description_news; ?></div>
                <div class="ui-decor-type-1 center-block"></div>
              </div>
				  <?php
						$args = array(
								'post_type' => 'new',
								'posts_per_page' => 2,
						);
						$news_query = new WP_Query( $args );
							 ?>
						<?php if ( $news_query->have_posts() ) : ?>
				<?php $i = 1; ?>
							<?php while ($news_query->have_posts()) : $news_query->the_post(); ?>
              <div class="news_top">
                <article class="b-post b-post-5 clearfix">
                  <div class="entry-media">
					  <a href="<?php echo get_permalink(); ?>">
						  <img src="<?php the_post_thumbnail_url(); ?>" alt="Foto" class="img-responsive"/>
					  </a></div>
                  <div class="entry-main">
                    <div class="entry-header">
                      <div class="entry-date">
						  <?php the_time('F j') ?><span class="entry-date__month">
						  </span>
						</div>
						<a href="<?php the_permalink(); ?>">
							<h2 class="entry-title entry-title_spacing ui-title-inner"><?php the_title() ?></h2>
						</a>
                      <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon pe-7s-user"></i><?php echo __('by  ');?><a href="post-1.html" class="entry-meta__link"><?php the_author_posts_link(); ?></a></span><span class="entry-meta__item"><i class="entry-meta__icon pe-7s-comment"></i><a href="post-1.html" class="entry-meta__link"><?php comments_popup_link('0 Comments','One Comment','% Comments', 'comment', 'Comment Disabled'); ?></a></span></div>
                    </div>
                    <div class="entry-content">
                      <?php the_excerpt(); ?>
                    </div>
                  </div>
                </article>
				  
              </div>
				 <?php $i++;	?>
		<?php endwhile; endif; ?>
            </div>
          </div>
        </div>
      </div>
	<?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_cont = ot_get_option( 'title_cont' );
		  $description_cont = ot_get_option( 'description_cont' );
		}
    ?>
	 <div class="section-table clearfix">
        <section class="b-form-request section-table__inner">
          <div style="background-image: url(<?php bloginfo('template_directory'); ?>/assets/media/components/b-form-request/bg-1.jpg)" data-jarallax="{&quot;type&quot;: &quot;scroll-opacity&quot;}" class="b-form-request__parallax section-bg section-bg_primary jarallax"></div>
          <div class="section__inner">
            <div class="b-form-request__inner">
              <h2 class="b-form-request__title">
				  <?php echo $title_cont; ?>
				  </h2>
              <div class="b-form-request__text">
				  <?php echo $description_cont; ?>
              </div>
            </div>
            <form class="b-form-request__form">
              <div class="row">
				  <?php
				  $lang = custom_get_current_lang();
    				if($lang == 'ar'){
						 echo do_shortcode('[contact-form-7 id="74" title="Contact form 1"]'); 
						}elseif($lang == 'en'){
						echo do_shortcode('[contact-form-7 id="75" title="Contact form 1"]'); 
					};
				  	?>  
				</div>
            </form>
          </div>
        </section>		 
      </div>
<?php get_footer(); ?>