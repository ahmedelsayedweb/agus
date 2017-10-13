<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'Agus');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'k$SOPYk)pP~f&j-l|j{J^Z#vI>X+S:2vc^!GRbZv mO*Gr3;T3m-I,C[`.<SYz*!');
define('SECURE_AUTH_KEY',  '(.v6/cf4j38kLDie(3W<UZ[5m*sy3D_59+CR!Lh:2Xr,2u.0p34:&4@J67fYT;i&');
define('LOGGED_IN_KEY',    '?-S.lI({!%JJ@%NY;)|Merr!rQ wj%Rl0re ETkZ>+u/`@ 26s?r;W}@m/Q3=8gB');
define('NONCE_KEY',        '99TEqAYr;!&CppW3_EWSS[E=EAGNN09L?G*EG)-N],z(4nX)DT;,*^fXW$gLl2OY');
define('AUTH_SALT',        'zG_yN[}BMzPN7d0u/1I9>D92%wTyc%}Bn8eV1HbT&G)GvJP{/gb)D<WN@GEQ~{#/');
define('SECURE_AUTH_SALT', '4PNsF!goaJ>{F2hIz*2tFu)L]q_,hML==PgqBu%rR|k)Y~omMLqd#+jeN0N[}^?J');
define('LOGGED_IN_SALT',   'P,`X%JA2BvY$,sirb*{wId[w#N7&UtS:OUP{zSkpC_rz2{GP#xXAxD(E/UtGPO-Z');
define('NONCE_SALT',       'j;QA61.IFm<`f?{72I39{~!~dm|CZnCh^|d<-@2Y`V/x}-CU4v-y:gl<i&L,IE2 ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
