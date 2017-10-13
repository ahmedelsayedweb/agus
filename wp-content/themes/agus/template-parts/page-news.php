<?php
/**
 * Template Name: Page news Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php  
		if ( function_exists( 'ot_get_option' ) ) {
		  $title_news = ot_get_option( 'title_news' );
		  $description_news = ot_get_option( 'description_news' );
		}
    ?>
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
                <div class="b-title-page__info">
					<?php
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
    	 <div class="col-md-12">
            <div class="l-main-content l-main-content_pd-top_lg l-main-content_pd-rgt_sm">
              <div class="posts-group_2-col">
                <div class="js-scroll-content">
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
                  <article class="b-post b-post-3 clearfix">
                    <div class="entry-media">
						<a href="<?php echo get_permalink(); ?>" class="js-zoom-images">
							<img src="<?php the_post_thumbnail_url(); ?>" alt="" class="img-responsive"/>
						</a>
					  </div>
                    <div class="entry-main">
                      <div class="entry-header">
                        <div class="entry-date"><?php the_time('F j') ?></div>
						  <a href="<?php the_permalink(); ?>">
							<h2 class="entry-title entry-title_spacing ui-title-inner"><?php the_title() ?></h2>
						  </a>
                        <div class="entry-meta">
							<span class="entry-meta__item">
								<i class="entry-meta__icon pe-7s-user"></i><?php echo __('by  ');?>
								<a href="post-1.html" class="entry-meta__link"><?php the_author_posts_link(); ?></a></span>
							<span class="entry-meta__item">
								<i class="entry-meta__icon pe-7s-comment"></i>
								<?php comments_popup_link('0 Comments','One Comment','% Comments', 'comment', 'Comment Disabled'); ?><a href="post-1.html" class="entry-meta__link"></a>
							</span></div>
                      </div>
                      <div class="entry-content"><?php the_excerpt(); ?></div>
                      <div class="entry-footer">
						  <a href="<?php echo get_permalink(); ?>" class="btn btn-sm"><?php echo __('read more');?></a></div>
                    </div>
                  </article>
                 <?php $i++;	?>
		<?php endwhile; endif; ?>
                </div>
              </div>
            </div>
          </div>
<?php get_footer(); ?>