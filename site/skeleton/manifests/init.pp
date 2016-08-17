class skeleton {  
file { '/etc/skel/.bashrc':
  ensure  => 'file',
  source => 'puppet:///modules/skeleton/.bashrc',
  group   => '0',
  mode    => '0644',
  mtime   => '2015-03-05 22:06:48 +0000',
  owner   => '0',
  type    => 'file',
}
}

