<?php
/**
 * The template for displaying all single posts and attachments
 * Template Post Type: post
 * @package WordPress
 */
?>
<?php get_header(); ?>
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $title_page_about = ot_get_option( 'title_page_about' );
	  $description_page_about = ot_get_option( 'description_page_about' );
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
<div class="container">
	<?php 
	if (have_posts()){
		while (have_posts()){
			the_post(); ?>
        <div class="row">
          <div class="col-md-12">
            <div class="l-main-content l-main-content_pd-lft">
              <section class="section-area">
                <h2 class="ui-title-inner-1"><?php the_field('title_services'); ?></h2>
                <div class="ui-subtitle-block ui-subtitle-block_mr-btm_xs"><?php the_excerpt(); ?></div>
                <div class="row">
                  <div class="col-sm-6"><img src="<?php the_field('image_services_1'); ?>" alt="Foto" class="img-post img-responsive">
                    <h3 class="ui-title-inner-1 ui-title-inner-1_light ui-title-inner-1_mrg-top"><?php the_field('title_services_1'); ?></h3>
                    <p><?php the_field('description_services_1'); ?></p>
                  </div>
                  <div class="col-sm-6"><?php if( get_field('image_services_2') ): ?><img src="<?php the_field('image_services_2'); ?>" alt="Foto" class="img-post img-responsive"><?php endif; ?>
                    <h3 class="ui-title-inner-1 ui-title-inner-1_light ui-title-inner-1_mrg-top"><?php the_field('title_services_2'); ?></h3>
                    <p><?php the_field('description_services_2'); ?></p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-xs-12">
                    <h3 class="ui-title-inner-1 ui-title-inner-1_light"><?php the_field('title_bot'); ?></h3>
                    <div id="accordion-1" class="panel-group accordion accordion_marg-top_a">
                      <div class="panel panel-default">
                        <div class="panel-heading"><a data-toggle="collapse" data-parent="#accordion-1" href="#collapse-2" class="btn-collapse collapsed"><i class="icon"></i></a>
                          <h3 class="panel-title"><?php the_field('question_bot_1'); ?></h3>
                        </div>
                        <div id="collapse-2" class="panel-collapse collapse in">
                          <div class="panel-body">
                            <p><?php the_field('answer_bot_1'); ?></p>
                          </div>
                        </div>
                      </div>
                      <div class="panel">
                        <div class="panel-heading"><a data-toggle="collapse" data-parent="#accordion-1" href="#collapse-3" class="btn-collapse collapsed"><i class="icon"></i></a>
                          <h3 class="panel-title"><?php the_field('question_bot_2'); ?></h3>
                        </div>
                        <div id="collapse-3" class="panel-collapse collapse">
                          <div class="panel-body">
                            <p><?php the_field('answer_bot_2'); ?></p>
                          </div>
                        </div>
                      </div>
                      <div class="panel">
                        <div class="panel-heading"><a data-toggle="collapse" data-parent="#accordion-1" href="#collapse-4" class="btn-collapse collapsed"><i class="icon"></i></a>
                          <h3 class="panel-title"><?php the_field('question_bot_3'); ?></h3>
                        </div>
                        <div id="collapse-4" class="panel-collapse collapse">
                          <div class="panel-body">
                            <p><?php the_field('answer_bot_3'); ?></p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- end panel-->
                    
                  </div>
                </div>
              </section>
            </div>
          </div>
      </div></div>
<?php
							}
							}
						  	?> 
<?php get_footer(); ?>