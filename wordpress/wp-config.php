<?php
define( 'DB_NAME', 'db_name' );
define( 'DB_USER', 'user_name' );
define( 'DB_PASSWORD', 'user_pass' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );
define( 'AUTH_KEY',         'c etait sur en fait!' );
define( 'SECURE_AUTH_KEY',  'c etait sur en fait!' );
define( 'LOGGED_IN_KEY',    'c etait sur en fait!' );
define( 'NONCE_KEY',        'c etait sur en fait!' );
define( 'AUTH_SALT',        'c etait sur en fait!' );
define( 'SECURE_AUTH_SALT', 'c etait sur en fait!' );
define( 'LOGGED_IN_SALT',   'c etait sur en fait!' );
define( 'NONCE_SALT',       'c etait sur en fait!' );

define('WP_HOME', 'http://earnaud.42.fr');
define('WP_SITEURL','http://earnaud.42.fr');

$table_prefix = 'wp_';
define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );