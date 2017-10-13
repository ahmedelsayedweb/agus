<!DOCTYPE html>
<html <?php get_bloginfo('language') ?>>
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $logo_image = ot_get_option( 'logo' );
	  $favicon = ot_get_option( 'favicon' );
	  $instagram = ot_get_option( 'instagram' );
	  $facebook = ot_get_option( 'facebook' );
	  $twitter = ot_get_option( 'twitter' );
	  $google = ot_get_option( 'google' );
	  $call = ot_get_option( 'call' );
	  $email = ot_get_option( 'email' );
	}
    ?>
	<head>
		<meta charset="<?php bloginfo('charset'); ?>"/>
		<title><?php wp_title('|','true','right'); ?><?php bloginfo('name'); ?></title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/ico" href="<?php echo $favicon ?>" />
		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
		<!-- FONT CSS
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900">
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">-->
		<?php wp_head(); ?>
	</head>
	<body>	
		<!-- Loader-->
    <div id="page-preloader"><span class="spinner"></span></div>
    <!-- Loader end-->
    <div data-header="sticky" data-header-top="200" class="l-theme animated-css">     
      <header class="header">
        <div class="header-top clearfix">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <ul class="social-net list-inline">
				<li class="social-net__item"><a href="<?php echo $facebook; ?>" class="social-net__link"><i class="icon fa fa-facebook"></i></a></li>
                  <li class="social-net__item"><a href="<?php echo $twitter; ?>" class="social-net__link"><i class="icon fa fa-twitter"></i></a></li>
                  <li class="social-net__item"><a href="<?php echo $instagram; ?>" class="social-net__link"><i class="icon fa fa-instagram"></i></a></li>
                  <li class="social-net__item"><a href="<?php echo $google; ?>" class="social-net__link"><i class="icon fa fa-google-plus"></i></a></li>
                </ul>
				  <div class="col-md-3">
				   <?php
					if(is_active_sidebar('header')){
					dynamic_sidebar('header');
					}
					?>
				</div>
                <!-- end social-list-->
                <div class="header-contact">
                  <div class="header-contact__item"><?php echo __('Call')?>  :<span class="header-contact__info"> <?php echo $call; ?></span></div>
                  <div class="header-contact__item"><?php echo __('Email');?>  :<a href="mailto:info@domain.com" class="header-contact__info"><?php echo $email; ?></a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="header-main">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
				  <a href="<?php bloginfo('url'); ?>" class="logo">
					  <img src="<?php echo $logo_image; ?>" alt="Logo" class="logo__img img-responsive"/>
				  </a>
                <div class="header-nav">
                  <div class="navbar-trigger visible-xs">
                    <button type="button" data-toggle="collapse" data-target="#navbar-collapse-1" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                  </div>
                  
                  <nav class="navbar yamm">
                    <div id="navbar-collapse-1" class="navbar-collapse collapse">
                      <ul class="nav navbar-nav">
						  <?php bootstrap_menu(); ?>
                      </ul>
                    </div>
                   
                  </nav>
                  <!-- end nav-->
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!-- end header-->