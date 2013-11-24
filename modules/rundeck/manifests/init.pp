#doco here
class rundeck {
  package { 'sun-java6-jre': ensure => latest }
  package { 'sun-java6-bin': ensure => latest }

  group { 'rundeck':
    ensure     => present,
    gid        => '1004',
  }

  user { 'rundeck':
    ensure     => present,
    uid        => '1004',
    gid        => '1004',
    shell      => '/bin/bash',
    home       => '/home/rundeck',
    managehome => true,

  }

  file { '/home/rundeck':
    ensure  => directory, # so make this a directory
    recurse => true, # enable recursive directory management
    purge   => true, # purge all unmanaged junk
    force   => true, # also purge subdirs and links etc.
    owner   => 'rundeck',
    group   => 'rundeck',
    source  => 'puppet:///modules/java',
    ignore  => [ '.svn' ],
    mode    => '0644',
    # this mode will also apply to files from the source directory
    # puppet will automatically set +x for directories
  }

}
