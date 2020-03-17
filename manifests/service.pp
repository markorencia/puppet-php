# @summary
#   Allows for the Nginx service to restart when triggered
class php::service {
  service { "${php::service_name}":
    alias      => 'php_service',
    ensure     => $php::service_ensure,
    enable     => $php::service_enable,
    hasrestart => true,
  }
}
