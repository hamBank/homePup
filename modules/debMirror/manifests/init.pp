#out Debian mirror config
class debMirror {

  group { 'debian':
    ensure     => present,
    gid        => '1003',
  }

  user { 'debian':
    ensure     => present,
    uid        => '1002',
    gid        => '1003',
    shell      => '/bin/bash',
    home       => '/home/debian',
    managehome => true,

  }

  file { '/home/debian':
    ensure  => directory, # so make this a directory
    recurse => true, # enable recursive directory management
    purge   => true, # purge all unmanaged junk
    force   => true, # also purge subdirs and links etc.
    owner   => 'debian',
    group   => 'debian',
    source  => 'puppet:///files/ftpsync',
    ignore  => [ '.svn' ],
    mode    => '0644',
    # this mode will also apply to files from the source directory
    # puppet will automatically set +x for directories
  }

  file { '/home/debian/bin':
    ensure  => directory, # so make this a directory
    recurse => true, # enable recursive directory management
    purge   => true, # purge all unmanaged junk
    force   => true, # also purge subdirs and links etc.
    owner   => 'debian',
    group   => 'debian',
    source  => 'puppet:///files/ftpsync/bin',
    ignore  => [ '.svn' ],
    mode    => '0755',
    # this mode will also apply to files from the source directory
    # puppet will automatically set +x for directories
  }

  file { '/home/debian/log':
    ensure => directory,
    owner  => 'debian',
    group  => 'debian',
    mode   => '0755',
  }

  cron { 'debsync':
    command     => '/home/debian/bin/ftpsync',
    user        => debian,
    hour        => 1,
    minute      => 5,
    weekday     => [1,3,5,7],
    environment => ['MAILTO=foobie@gmail.com'],
  }

}
