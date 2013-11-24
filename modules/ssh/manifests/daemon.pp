#SSh deamon - hopefully all hosts
class ssh::daemon {

  package { 'openssh-server':
    ensure => installed,
  }

  file { '/etc/ssh/sshd_config':
    source  => 'puppet:///files/etc/sshd_config',
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    notify  => Service['ssh'], # sshd will restart whenever you edit this file.
    require => Package['openssh-server'],
  }

  service { 'ssh':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}
