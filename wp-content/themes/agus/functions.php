<?php
//added by Elsayed to include translate array of arabic
include_once 'translate.php';
require_once('wp-bootstrap-navwalker.php');
require_once( get_template_directory() .'/inc/theme-option/option-tree/ot-loader.php');
add_filter( 'ot_theme_mode', '__return_true' );
add_filter( 'ot_show_pages', '__return_true' );
add_filter( 'ot_show_new_layout', '__return_true' );
//add featured image
add_theme_support('post-thumbnails');
/*
** Function to Add custom Styles
** Added By @Ahmed ELsayed
** wp_enqueue_style()
*/
function agus_add_styles() {	
    wp_enqueue_style('master', get_template_directory_uri() . '/assets/css/master.css');
    wp_enqueue_style('switcher', get_template_directory_uri() . '/assets/plugins/switcher/css/switcher.css');
//    wp_enqueue_style('master', get_template_directory_uri() . '/assets/css/theme.css');
    $lang = custom_get_current_lang();
    if($lang == 'ar'){
        wp_enqueue_style('arabic', get_template_directory_uri() . '/assets/css/theme-rtl.css');        
    }
}
/*
** Function to Add custom Scripts
** Added By @Ahmed ELsayed
** wp_enqueue_script()
*/
function agus_add_scripts() {
	
//	wp_deregister_script('jquery'); 
//	wp_register_script('jquery', includes_url('/js/jquery/jquery.js'), false, '', true); 
//	wp_enqueue_script('jquery');
	
	wp_enqueue_script('jquery', get_template_directory_uri() . '/assets/js/jquery.js', array() , false, true);
	wp_enqueue_script('custom', get_template_directory_uri() . '/assets/js/custom.js', array() , false, true);
	wp_enqueue_script('bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array() , false, true);
	wp_enqueue_script('jquery.sliderPro', get_template_directory_uri() . '/assets/plugins/slider-pro/jquery.sliderPro.min.js', array() , false, true);
	wp_enqueue_script('owl.carousel', get_template_directory_uri() . '/assets/plugins/owl-carousel/owl.carousel.min.js', array() , false, true);
	wp_enqueue_script('magnific', get_template_directory_uri() . '/assets/plugins/magnific-popup/jquery.magnific-popup.min.js', array() , false, true);
	wp_enqueue_script('bootstrap-select', get_template_directory_uri() . '/assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js', array() , false, true);
	wp_enqueue_script('doubletaptogo', get_template_directory_uri() . '/assets/plugins/doubletaptogo.js', array() , false, true);
	wp_enqueue_script('waypoints', get_template_directory_uri() . '/assets/plugins/waypoints.min.js', array() , false, true);
	wp_enqueue_script('flowplayer', get_template_directory_uri() . '/assets/plugins/flowplayer/flowplayer.min.js', array() , false, true);
	wp_enqueue_script('classie', get_template_directory_uri() . '/assets/plugins/classie.js', array() , false, true);
	wp_enqueue_script('scrollreveal', get_template_directory_uri() . '/assets/plugins/scrollreveal/scrollreveal.min.js', array() , false, true);
	wp_enqueue_script('dmss', get_template_directory_uri() . '/assets/plugins/switcher/js/dmss.js', array() , false, true);
	wp_enqueue_script('jarallax', get_template_directory_uri() . '/assets/plugins/jarallax/jarallax.min.js', array() , false, true);
	wp_enqueue_script('easypiechart', get_template_directory_uri() . '/assets/plugins/rendro-easy-pie-chart/dist/jquery.easypiechart.min.js', array() , false, true);
	wp_enqueue_script('html5shiv', get_template_directory_uri() . '/js/html5shiv.min.js');
	wp_script_add_data('html5shiv','conditional','lt IE 9');
	
}
/*
** Add menu support
** Added By @Ahmed ELsayed
*/
function custom_menu(){

	//register_nav_menu('bootstrap-menu', __('Navigation Bor'));
	register_nav_menus( array(
	'bootstrap-menu' => 'Navigation Bor',
	'footer_menu' => 'Footer Menu',
) );
}
function Ahmed_extend_excerpt($length){
	return 10;
}
add_filter('excerpt_length','Ahmed_extend_excerpt');
function Ahmed_excerpt_change_dots($more){
	return '...';
}
add_filter('excerpt_more','Ahmed_excerpt_change_dots');
function add_menuclass($ulclass) {
  return preg_replace('/<a /', '<a ', $ulclass);
}
add_filter('wp_nav_menu','add_menuclass');
function bootstrap_menu(){
	
	wp_nav_menu(array(
	'theme_location' => 'bootstrap-menu',
	'menu_class'     => 'nav-links nav navbar-nav is-hidden',
	'container'     => false,
	'depth'     => 2,
	'walker'     => new wp_bootstrap_navwalker(),
	));
}
function register_my_menus() {
    
    register_nav_menus(array(
    'header-location' => 'header-menu'  
       
    ));
}
add_action('init','register_my_menus');
require_once('wp_bootstrap_navwalker.php');
add_theme_support('post-thumbnails');
add_theme_support('title-tag');



add_filter('wp_nav_menu_items', 'add_login_logout_link', 10, 2);
 
function add_login_logout_link($items, $args) {
 
        if ( $args->theme_location == 'primary-menu' ) {       
 
        ob_start();
 
        wp_loginout('index.php');
 
        $loginoutlink = ob_get_contents();
 
        ob_end_clean();
 
        $items .= '<li>'. $loginoutlink .'</li>';
    }
 
    return $items;
 
}
function add_tax_to_pll( $taxonomies, $is_settings ) {
    if ( $is_settings ) {
        unset( $taxonomies['my_tax'] );
    } else {
        $taxonomies['my_tax'] = 'my_tax';
    }
    return $taxonomies;
}


function my_post_templater($template){
  if( !is_single() )
    return $template;
  global $wp_query;
  $c_template = get_post_meta( $wp_query->post->ID, '_wp_page_template', true );
  return empty( $c_template ) ? $template : $c_template;
}

add_filter( 'template', 'my_post_templater' );
add_filter('footer_menu','add_menuclass');
 
function copy_post_metas( $metas ) {
    return array_merge( $metas, array( 'my_post_meta' ) );
}
add_filter( 'pll_copy_taxonomies', 'copy_tax', 10, 2 );
 
function copy_tax( $taxonomies, $sync ) {
    $taxonomies[] = 'my_custom_tax';
    return $taxonomies;
}
add_filter( 'pll_translation_url', 'check_archive_translation', 10, 2 );
 
function check_archive_translation( $url, $lang ) {
    global $wp_query;
    $qv = $wp_query->query;
 
    if ( is_month() ) {
        $posts = get_posts( array(
            'lang'     => $lang,
            'year'     => $qv['year'],
            'monthnum' => $qv['monthnum'],
        ) );
        if ( empty( $posts ) ) {
            return null;
        }
    }
    return $url;
}
add_filter( 'pll_get_post_types', 'add_cpt_to_pll', 10, 2 );
 
function add_cpt_to_pll( $post_types, $is_settings ) {
    if ( $is_settings ) {
        // hides 'my_cpt' from the list of custom post types in Polylang settings
        unset( $post_types['my_cpt'] );
    } else {
        // enables language and translation management for 'my_cpt'
        $post_types['my_cpt'] = 'my_cpt';
    }
    return $post_types;
}
add_filter( 'pll_get_taxonomies', 'add_tax_to_pll', 10, 2 );
 
function add_tax_to_pll( $taxonomies, $is_settings ) {
    if ( $is_settings ) {
        unset( $taxonomies['my_tax'] );
    } else {
        $taxonomies['my_tax'] = 'my_tax';
    }
    return $taxonomies;
}
add_filter( 'pll_redirect_home', '__return_false' );
add_theme_support( 'customize-selective-refresh-widgets' );
function twentyfifteen_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Widget Area', 'twentyfifteen' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar.', 'twentyfifteen' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'twentyfifteen_widgets_init' );
/*
** Add Actions
** Added By @Ahmed ELsayed
** add_action()
*/

add_action( 'wp_enqueue_scripts', 'agus_add_styles' );
add_action( 'wp_enqueue_scripts', 'agus_add_scripts' );
add_action( 'init', 'custom_menu' );

register_sidebar( array(
'name' => 'Footer Sidebar 1',
'id' => 'footer-sidebar-1',
'description' => 'Appears in the footer area',
'before_widget' => '<aside id="%1$s" class="widget %2$s">',
'after_widget' => '</aside>',
'before_title' => '<h3 class="footer-section__title">',
'after_title' => '</h3>',
) );
register_sidebar( array(
'name' => 'Footer Sidebar 2',
'id' => 'footer-sidebar-2',
'description' => 'Appears in the footer area',
'before_widget' => '<aside id="%1$s" class="widget %2$s">',
'after_widget' => '</aside>',
'before_title' => '<h3 class="footer-section__title">',
'after_title' => '</h3>',
) );
register_sidebar( array(
'name' => 'Header',
'id' => 'header',
'description' => 'Appears in the footer area',
'before_widget' => '<aside id="%1$s" class="widget %2$s">',
'after_widget' => '</aside>',
) );
function my_post_templater($template){
  if( !is_single() )
    return $template;
  global $wp_query;
  $c_template = get_post_meta( $wp_query->post->ID, '_wp_page_template', true );
  return empty( $c_template ) ? $template : $c_template;
}

add_filter( 'template', 'my_post_templater' );

function give_my_posts_templates(){
  add_post_type_support( 'post', 'page-attributes' );
}

add_action( 'init', 'give_my_posts_templates' );
//added by Elsayed to translate to arabic
function agus_change_translate_text( $translated_text ) {
    $lang = custom_get_current_lang();
    $return_item = $translated_text;
    $transalte_items = $GLOBALS['transalte_items'];
    if($lang == 'ar'){
        if(isset($transalte_items[$translated_text])){
            $return_item = $transalte_items[$translated_text];
        }
    }
    return $return_item;
}
add_filter( 'gettext', 'agus_change_translate_text', 20 );
//added by Elsayed to get current language
function custom_get_current_lang(){
    $lang = ICL_LANGUAGE_CODE;
    return $lang;
}
