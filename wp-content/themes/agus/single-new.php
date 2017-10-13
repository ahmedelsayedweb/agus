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
   <div class="col-md-12">
	   <?php 
	if (have_posts()){
		while (have_posts()){
			the_post(); ?>
            <div class="l-main-content l-main-content_pd-rgt l-main-content_pd-top_lg">
              <div class="posts-group">
                <article class="b-post b-post-4 clearfix">
                  <div class="entry-media">
					  <a href="<?php the_permalink(); ?>" class="js-zoom-images">
						  <img src="<?php the_post_thumbnail_url(); ?>" alt="Foto" class="img-responsive"/>
					  </a>
					</div>
                  <div class="entry-main">
                    <div class="entry-header">
                      <div class="entry-date"><?php the_date('F j, Y'); ?></div>
                      <div class="entry-meta">
						  <span class="entry-meta__item">
							  <i class="entry-meta__icon pe-7s-user"></i>
							  <?php echo __('by  ');?>
							  <a href="post-1.html" class="entry-meta__link">
								  <?php the_author_posts_link(); ?>
							  </a>
						  </span>
						  <span class="entry-meta__item">
							  <i class="entry-meta__icon pe-7s-comment"></i>
							  <?php comments_popup_link('0 Comments','One Comment','% Comments', 'comment', 'Comment Disabled'); ?>
						  <a href="post-1.html" class="entry-meta__link"></a>
						  </span>
						</div>
                      <h2 class="entry-title entry-title_spacing ui-title-inner"><?php the_title(); ?></h2>
                    </div>
                    <div class="entry-content"><?php the_content(); ?></div>
                    <div class="entry-footer">
                      <div class="post-tags">
                        <div class="post-tags__title"><?php echo __('tags : ');?></div>
				   <?php
					if(has_tag()) {		
						the_tags();
						
					} else {
						echo 'tags: There\'s No Tags';
					} ?>

						  <?php
							}
							}
						  	?>    
						</div>
                    </div>
                  </div>
                </article>
                <!-- end post-->
                <?php echo comments_template();?>
                
                    
           <!--       <ul class="comments-list list-unstyled">
                    <li>
                      <article class="comment clearfix">
                        <div class="comment-avatar"><img src="assets/media/content/posts/avatar/1.jpg" alt="avatar" class="img-responsive"/></div>
                        <div class="comment-inner">
                          <header class="comment-header">
                            <cite class="comment-author">danny hill</cite>
                            <time datetime="2012-10-27" class="comment-datetime">31 May 2016, at 3:00pm</time><a href="post-1.html" class="comment-btn color-promary">- reply</a>
                          </header>
                          <div class="comment-body">
                            <p>Dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit.</p>
                          </div>
                        </div>
                      </article>
                      <ul class="children list-unstyled">
                        <li>
                          <article class="comment clearfix">
                            <div class="comment-avatar"><img src="assets/media/content/posts/avatar/2.jpg" alt="avatar" class="img-responsive"/></div>
                            <div class="comment-inner">
                              <header class="comment-header">
                                <cite class="comment-author">ren boosak</cite>
                                <time datetime="2012-10-27" class="comment-datetime">2 June 2016, at 6:10pm</time><a href="post-1.html" class="comment-btn color-promary">- reply</a>
                              </header>
                              <div class="comment-body">
                                <p>Dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris commodo consequat. Duis aute irure dolor reprehenderit.</p>
                              </div>
                            </div>
                          </article>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <article class="comment clearfix">
                        <div class="comment-avatar"><img src="assets/media/content/posts/avatar/3.jpg" alt="avatar" class="img-responsive"/></div>
                        <div class="comment-inner">
                          <header class="comment-header">
                            <cite class="comment-author">james camron</cite>
                            <time datetime="2012-10-27" class="comment-datetime">25 August 2016, at 7:30pm</time><a href="post-1.html" class="comment-btn color-promary">- reply</a>
                          </header>
                          <div class="comment-body">
                            <p>Dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi aliquip ex ea commodo consequat. Duis aute irure dolor reprehenderit in voluptate velit.</p>
                          </div>
                        </div>
                      </article>
                    </li>
                  </ul>
                </section>
                <!-- end section-comment-->
                
                
                 <!-- <form action="#" method="post" class="form-reply ui-form ui-form-1 typography-last-elem">
                    <div class="row">
                      <div class="col-md-6">
                        <input type="text" placeholder="Name" class="form-control"/>
                      </div>
                      <div class="col-md-6">
                        <input type="email" placeholder="Email" class="form-control"/>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-12">
                        <textarea rows="6" placeholder="Comments" class="form-control"></textarea>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-xs-12">
                        <button class="ui-form__btn btn btn-primary btn-sm btn-effect">post comment</button>
                      </div>
                    </div>
                  </form>-->
            
                <!-- end section-reply-form-->
                
              </div>
            </div>
          </div>
<?php get_footer(); ?>