class skeleton {  
file { '/etc/skel':
ensure => directory,
}
file { '/etc/skel/.bashrc':
ensure => file,
owner => 'root',
group => 'root',
mode => '0440',
source => 'puppet:///modules/skelelton/bashrc',
}
}

