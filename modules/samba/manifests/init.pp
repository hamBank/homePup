#doco for samba
class samba {

  package { 'samba':
    ensure => installed,
  }

  file { '/etc/samba/smb.conf':
    source  => [
    "puppet:///modules/samba/smb.conf.${::hostname}",
    'puppet:///modules/samba/smb.conf',
    ],
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    require => Package['samba'],
    notify  => Service['samba'],
    # samba will restart whenever you edit this file.
  }

  service { 'samba':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}

