#some svn guff
class subversion {

  package { 'subversion': ensure => latest }
  package { 'apache2' : ensure => latest }
  package { 'libapache2-svn' : ensure => latest }

  mount { '/srv/svn':
    ensure  => mounted,
    atboot  => true,
    device  => '/dev/vdb',
    fstype  => 'ocfs2',
    options => 'defaults',
    dump    => '0',
    pass    => '1',
    require => Class['ocfs2'];
  }

  file { '/etc/apache2/dav_svn.passwd':
    source  => 'puppet:///files/svn/dav_svn.passwd',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['libapache2-svn'],
    notify  => Service['apache2'],
  }

  file { '/etc/apache2/mods-available/dav_svn.conf':
    source  => 'puppet:///files/svn/dav_svn.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['libapache2-svn'],
    notify  => Service['apache2'],
  }

  service { 'apache2':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}

