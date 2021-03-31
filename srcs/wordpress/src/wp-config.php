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
 * @package WordPress */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'aherlind');

/** MySQL database password */
define('DB_PASSWORD', 'aherlind');

/** MySQL hostname */
define('DB_HOST', 'mysql-service:3306');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         '-=tF>#`v^wP#++0et#g0DPBFH;2-:xnq%PrprW9g_h-=_zjU~sNFu[u%u(c?2+4X');
define('SECURE_AUTH_KEY',  'JFXYLsF~I45|G]&_b-1fTx&xD:7`o`0i;S&N%s7#xtIUYdISM$sPg>$,f$svC0Cy');
define('LOGGED_IN_KEY',    '3T&fNsai=vMW5OkmyOx^+++,8nr+5fc+txV(8~!BbpSn+enGIzFI/EIX&6n3Mi;h');
define('NONCE_KEY',        '++s#?b%:uuysov*G)[~-wqO*$fh(eoD^vlS2kbL.ktnMrJ4vs^TS7M(1L-V35Zi?');
define('AUTH_SALT',        '}pD&Y66G~k//t9I89hBl,B0O1 -8#f_ZlJ^.z,,i E#i7aCC&-7^.-K,W1#*[)MZ');
define('SECURE_AUTH_SALT', '~[wGmQ la#[P;`+xSWT^mS-d@_n>3J.;0C3) yf327R14Bo+i?C3r_-|5R!RZ<i]');
define('LOGGED_IN_SALT',   '-q^RKG4+CAYW(%0V:[<e5M9V IbW(gCYQ7#0u^N/R-4&Pg=_6FZnP&$Q$bzP0jom');
define('NONCE_SALT',       'a5GZkk%g,)j)1PPW%H.W,v-u*F7Y/1kwl$;I(92v%Bvp:;0%h}f[03f$$d4B>Jwc');
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
