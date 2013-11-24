#apt unstable config
class apt::unstable {

  file { '/etc/apt/sources.list':
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet://puppet/files/etc/apt/sources.list.unstable',
  }

  file { '/etc/apt/update-date':
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet://puppet/files/etc/apt/update-date',
  }

  file { '/etc/apt/apt.conf.d/02proxy':
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet://puppet/files/etc/apt/02proxy',
  }

  exec { 'subscribe-echo':
    command     => '/usr/bin/apt-get -q -q update',
    logoutput   => false,
    refreshonly => true,
    subscribe   => [
    File['/etc/apt/update-date'],
    File['/etc/apt/sources.list'],
    File['/etc/apt/apt.conf.d/02proxy'],
    ]
  }

  Host <| title == debmir |>
}



