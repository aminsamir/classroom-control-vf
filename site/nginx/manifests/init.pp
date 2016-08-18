class nginx {
  File {
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
  
  $docroot = '/var/www'
  $confdir = '/etc/nginx'
  $blockdir = '/etc/nginx/conf.d'
  
  package { 'nginx':
    ensure => present,
  }
  
  file { [$docroot, $blockdir, $confdir]:
    ensure => directory,
  }
  
  file { "${docroot}/index.html":
    source => 'puppet:///modules/nginx/index.html',
  }
  
  file { "${confdir}/nginx.conf":
    source  => 'puppet:///modules/nginx/nginx.conf',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
  
  file { "${blockdir}/default.conf":
    source  => 'puppet:///modules/nginx/default.conf',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
  
  service { 'nginx':
    ensure => running,
    enable => true,
  }
}
