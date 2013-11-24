#doco for debian update - can you guess what it does
class debianUpdate {
  file { '/etc/update_initiator':
    source => 'puppet://puppet/files/update_initiator',
  }

  exec { '/usr/bin/apt-get -y dist-upgrade':
    refreshonly => true,
    subscribe   => File['/etc/update_initiator'],
  }
  exec { '/usr/bin/apt-get update':
    refreshonly => true,
    subscribe   => File['/etc/update_initiator'],
  }

}
