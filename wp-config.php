<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'u_kambingpintar');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

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
define('AUTH_KEY',         'bUZ!26JMCu(DV@zeeCe>`p3/Vs(@j$TN`GI}!H^uCE`$p&s0AL_VqNU1M/Vj4M<k');
define('SECURE_AUTH_KEY',  'qrH$SvQxp0LI-mMm#<@3ZTz~dV?O8F2_!=1_LA]Wugse jhP3TA Crlc3hov.8.T');
define('LOGGED_IN_KEY',    '4nicUF[MWjWShSc:D5^LYzpr4+T~9:xv;#d=5ZeB$,8N:9Cv*wpc4K5A/WJ(&mQ(');
define('NONCE_KEY',        'T&c@0O`bM-Jv_u.Z48~87%+-f{;UTQ9ajf9lq0<Z`)ZH3?S?3P?kmMiS1ud%n2Dq');
define('AUTH_SALT',        'TJT8<nQtkbV J&FN$g[tCV69j|57/pPTu9;80d`hF!GV><U8,_<&i[syh,fJD]R|');
define('SECURE_AUTH_SALT', ' 4x%+4H.TW_)QmF/z|Y2Pi`o;]k|4VZVR:y$$|;H0U$-x7Msq+LWV&W1&.14R[EC');
define('LOGGED_IN_SALT',   'o%9Hp?`/h|FY8=o(=G`;x8p-HLZW!>+p}tpNTYz252i0vPYHmWV[U&mE~l}jdpCg');
define('NONCE_SALT',       '<Zy0Dgm8u)P}F31#1$2y|vWPpubsNjdY/@3v0<O1u[p^(<L^p2|/Y+Yi%P53*Eu2');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'kpdb_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
