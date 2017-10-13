<!-- FOOTER-->
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $logo_image = ot_get_option( 'logo' );
	  $description_footer = ot_get_option( 'description_footer' );
	 $instagram = ot_get_option( 'instagram' );
	  $facebook = ot_get_option( 'facebook' );
	  $twitter = ot_get_option( 'twitter' );
	  $google = ot_get_option( 'google' );
	  $address = ot_get_option( 'address' );
	  $phone_footer = ot_get_option( 'phone_footer' );
	  $email_footer = ot_get_option( 'email' );
	}
    ?>
           <footer class="footer footer_mod-a">
        <div class="footer__main footer__main_mod-a parallax-bg parallax-dark">
          <ul class="bg-slideshow">
            <li>
              <div style="background-image:url(<?php bloginfo('template_directory'); ?>/assets/media/components/footer/bg.jpg)" class="bg-slide"></div>
            </li>
          </ul>
          <div class="parallax__inner">
            <div class="container">
              <div class="row">
                <div class="col-md-4">
					<a href="<?php bloginfo('url'); ?>" class="footer__logo">
					<img src="<?php echo $logo_image; ?>" alt="Logo" class="img-responsive"/>
					</a>
                  <div class="footer-form__info">
                    <?php echo $description_footer; ?>
                  </div>
                  <div class="footer__contact footer__contact_lg"><?php echo $phone_footer; ?></div>
                  <div class="footer__contact"><?php echo $email_footer; ?></div>
                  <div class="footer__contact"><?php echo $address; ?></div>
                  <ul class="social-net list-inline">
                    <li class="social-net__item">
						<a href="<?php echo $twitter; ?>" class="social-net__link">
							<i class="icon fa fa-twitter"></i>
						</a>
					  </li>
                    <li class="social-net__item">
						<a href="<?php echo $facebook; ?>" class="social-net__link">
							<i class="icon fa fa-facebook"></i>
						</a>
					  </li>
					  <li class="social-net__item"><a href="<?php echo $instagram; ?>" class="social-net__link"><i class="icon fa fa-instagram"></i></a></li>
                    <li class="social-net__item">
						<a href="<?php echo $google; ?>" class="social-net__link">
							<i class="icon fa fa-google-plus"></i>
						</a>
					  </li>
                  </ul>
                  <!-- end social-list-->
                </div>
                <div class="col-md-2">
                  <section class="footer-section">
                    <h3 class="footer-section__title"><?php echo __('our services');?></h3> 
					  <ul class="footer-section__list list list-mark-4">
                      <?php
					if(is_active_sidebar('footer-sidebar-2')){
					dynamic_sidebar('footer-sidebar-2');
					}
					?>
					  </ul>
                  </section>
                </div>
				  <div class="col-md-3"> 
					  <section class="footer-section">
				   <?php
					if(is_active_sidebar('footer-sidebar-1')){
					dynamic_sidebar('footer-sidebar-1');
					}
					?>
				  </section>
				</div>
                <div class="col-sm-3">
                  <section class="footer-section">
                    	
                  </section>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="copyright">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">© <?php echo date ('Y'); ?>. All Rights Reserved | Design & Developer by <?php bloginfo('name'); ?></div>
            </div>
          </div>
        </div>
      </footer>
</div>
<link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css" rel="stylesheet">
<?php wp_footer(); ?>
	</body>	
</html>