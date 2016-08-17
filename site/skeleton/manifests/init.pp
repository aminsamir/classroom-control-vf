class skeleton {  
file { '/etc/skel/.bashrc':
  ensure  => 'file',
  content => '{md5}2f8222b4f275c4f18e69c34f66d2631b',
  ctime   => '2016-08-13 00:32:29 +0000',
  group   => '0',
  mode    => '0644',
  mtime   => '2015-03-05 22:06:48 +0000',
  owner   => '0',
  type    => 'file',
}
}

