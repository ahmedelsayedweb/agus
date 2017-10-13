<?php
/**
 * Template Name: Page About Us Template
 * Template Post Type: page
 * The template for displaying Page About Us
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
<?php the_content();?>
<!--<section class="section-default section-default_top-padd">
<div class="container">
  <div class="row">
	<div class="col-xs-12">
	  <h2 class="ui-title-block text-center">Skilled & Qualified Security Professionals</h2>
	  <ul class="b-advantages-3 b-advantages-3_mod-a">
		<li class="b-advantages-3__item">
		  <div class="b-advantages-3__subtitle">in business for 10 years</div>
		  <div class="b-advantages-3__title color-primary">we are an experienced team</div>
		</li>
		<li class="b-advantages-3__item">
		  <div class="b-advantages-3__subtitle">we offer 24/7 support</div>
		  <div class="b-advantages-3__title color-primary">we are approved contractor</div>
		</li>
		<li class="b-advantages-3__item">
		  <div class="b-advantages-3__subtitle">protect you anywhere</div>
		  <div class="b-advantages-3__title color-primary">we have ability to secure</div>
		</li>
	  </ul>
	</div>
  </div>
</div>
</section>
<section class="section-default">
<div class="container">
  <div class="row">
	<div class="col-sm-6">
	  <h2 class="ui-title-inner-1">Mission Statement</h2>
	  <div class="ui-subtitle-block ui-subtitle-block_mr-btm_sm">WeGuard has over 10 years of experience as a security company.</div>
	  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed dol eiusmod tempor incididunt dolor magna aliqua enim ad minim veniam quis nostrud exercitation ullamco aboris nis aliq conseque aute irure dolor in reprehe derit in voluptate.</p>
	  <p>Dolore eu fugiat nulla pariatur enimadm nostrud exercitation ullamco laboris nisi ut aliqua veniam quis nostrud exercitation ullamco laboris nisi ut aliquip lorem ipsum dolor sit amet consecte tur adipis cing elit sed do eiusmod tempor incididunt.</p>
	</div>
	<div class="col-sm-6"><img src="assets/media/content/555x300/1.jpg" alt="Foto" class="img-responsive"></div>
  </div>
</div>
</section>
<div class="section-default">
<div class="container">
  <div class="row">
	<div class="col-xs-12">
	  <div class="text-center">
		<h2 class="ui-title-block">We Guard History</h2>
		<div class="ui-subtitle-block">Elit sed aute dou eiusmod tempor incididunt labore dolore magna aliqua</div>
		<div class="ui-decor-type-1 center-block"></div>
		<div class="js-scroll-content">
		  <ul class="b-history-list list-unstyled">
			<li class="b-history-list__item clearfix">
			  <div class="b-history-list__label bg-primary center-block">january 2010</div>
			  <div class="b-history-list__inner">
				<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>
				<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div><i class="b-history-list__icon color-primary pe-7s-study"></i>
			  </div>
			</li>
			<li class="b-history-list__item clearfix">
			  <div class="b-history-list__label bg-primary center-block">december 2014</div>
			  <div class="b-history-list__inner">
				<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>
				<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam  quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div><i class="b-history-list__icon color-primary pe-7s-pin"></i>
			  </div>
			</li>
			<li class="b-history-list__item clearfix">
			  <div class="b-history-list__label bg-primary center-block">august 2016</div>
			  <div class="b-history-list__inner">
				<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>
				<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div><i class="b-history-list__icon color-primary pe-7s-paint"></i>
			  </div>
			</li>
		  </ul>
		</div><span class="b-history-list__btn btn btn-default btn-sm js-scroll-next">load more history</span>
		<div class="js-scroll-content">
		  <ul class="b-history-list list-unstyled">
			<li class="b-history-list__item clearfix">
			  <div class="b-history-list__label bg-primary center-block">january 2010</div>
			  <div class="b-history-list__inner">
				<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>
				<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div><i class="b-history-list__icon color-primary pe-7s-study"></i>
			  </div>
			</li>
			<li class="b-history-list__item clearfix">
			  <div class="b-history-list__label bg-primary center-block">december 2014</div>
			  <div class="b-history-list__inner">
				<h3 class="b-history-list__title">Lorem ipsum dolor sit amet elit sed eiusmod tempor</h3>
				<div class="b-history-list__description">Adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim minim veniam  quis nostrud.Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt labore dolore magna aliqua.</div><i class="b-history-list__icon color-primary pe-7s-pin"></i>
			  </div>
			</li>
			<li class="b-history-list__item clearfix">
			  <div class="b-history-list__label bg-primary center-block">august 2016</div>
			  <div class="b-history-list__inner">
				<h3 class="b-history-list__title">incididunt ut labore et dolore magna aliqua enim minim</h3>
				<div class="b-history-list__description">Consectetur adipisicing elit sed aute ou eiusmod tempor incididunt ulabore dolore magna utmn lore enim ad minim veniam quis nostrud. Lorem ipsum dolor amet consectetur adipisicing.</div><i class="b-history-list__icon color-primary pe-7s-paint"></i>
			  </div>
			</li>
		  </ul>
		</div>
	  </div>
	</div>
  </div>
</div>
</div>-->
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>