#doco
class ocfs2 {
  package { 'ocfs2-tools': ensure => latest }
  package { 'ocfs2console': ensure => latest }


  file { '/etc/ocfs2/cluster.conf':
    source  => 'puppet:///files/ocfs2/cluster.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    notify  => Service['o2cb'], # sshd will restart whenever you edit this file.
    require => Package['ocfs2-tools'],
  }

  file { '/etc/default/o2cb':
    source  => 'puppet:///files/ocfs2/default',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    notify  => Service['o2cb'], # sshd will restart whenever you edit this file.
    require => Package['ocfs2-tools'],
  }

  service { 'o2cb':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}

