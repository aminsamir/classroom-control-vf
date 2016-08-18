class users::admins {
users::managed_user { 'Amin': }
users::managed_user { 'Samir':
group => 'staff',
}
users::managed_user { 'Fahmy':
group => 'staff',
}
group { 'staff':
ensure => present,
}
}
