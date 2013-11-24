#Apt class for squeeze
class apt::squeeze {

  file { '/etc/apt/sources.list.blah':
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet://puppet/files/etc/apt/sources.list.squeeze',
  }

  file { '/etc/apt/apt.conf.d/02proxy.blah':
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet://puppet/files/etc/apt/02proxy',
  }

  exec { 'subscribe-echo-squeeze':
    command     => '/usr/bin/apt-get -q -q update',
    logoutput   => false,
    refreshonly => true,
    subscribe   => [
      File['/etc/apt/sources.list.blah'],
      File['/etc/apt/apt.conf.d/02proxy.blah'],
    ]
  }
}



