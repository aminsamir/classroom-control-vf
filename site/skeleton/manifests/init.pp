class skeleton {  
file { '/etc/skel/.bashrc':
ensure => directory,
owner => 'root',
group => 'root',
mode => '0440',
source => 'puppet:///modules/skel/bashrc',
}
}

