#doco
class ntp {
  package { 'ntp': ensure => latest }

  file { '/etc/ntp.conf':
    owner  => root,
    group  => root,
    mode   => '0640',
    source => 'puppet:///modules/ntp/ntp.conf',
    notify => Service['ntp'],
  }
  service { 'ntp':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['ntp'],
  }

}
