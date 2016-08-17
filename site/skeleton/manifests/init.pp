class skeleton {  
file { '/etc/skel/.bashrc':
  ensure  => 'file',
  source => 'puppet:///modules/skeleton/.bashrc',
  mode    => '0644',
  type    => 'file',
}
}

