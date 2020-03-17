# @summary 
#   Install the base EPEL & PHP package
#
# @example
#   include nginx::install
class php::install {
  $php_packages = ['php', 'php-fpm', 'php-common', 'php-opcache', 'php-pecl-apcu', 'php-cli', 'php-pear', 'php-pdo', 'php-mysqlnd', 'php-pgsql', 'php-pecl-mongodb', 'php-pecl-redis', 'php-pecl-memcache', 'php-pecl-memcached', 'php-gd', 'php-mbstring', 'php-mcrypt', 'php-xml', 'php-json', 'php-zip', 'php-mysql']

  package { $php_packages:
    ensure => $php::install_ensure,
  }
}
