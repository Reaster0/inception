<?php
define( 'DB_NAME', getenv('WORDPRESS_DB_NAME') );
define( 'DB_USER', getenv('WORDPRESS_DB_USER') );
define( 'DB_PASSWORD', getenv('WORDPRESS_DB_PASSWORD') );
define( 'DB_HOST', getenv('WORDPRESS_DB_HOST') );
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

$table_prefix = getenv('WORDPRESS_TABLE_PREFIX');
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_DISPLAY', false );
define( 'WP_DEBUG_LOG', true );
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );