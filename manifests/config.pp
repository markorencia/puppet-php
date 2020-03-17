# @summary
#   Manages PHP Configuration 
class php::config {
  file { 'php73_repo':
    ensure => $php::remi73_ensure,
    path   => $php::remi73_path,
    source => "puppet:///modules/php/remi-php73.repo",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }

    file { 'www_conf':
    ensure => $php::www_ensure,
    path   => $php::www_path,
    source => "puppet:///modules/php/${osfamily}.conf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }

    file { 'info_page':
    ensure => $php::info_ensure,
    path   => $php::info_path,
    source => "puppet:///modules/php/info.php",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }
}
