#doco here
class squid {

package { 'squid':
    ensure => latest,
}

package { 'dansguardian':
    ensure => latest,
}

package { 'libclamunrar6':
    ensure => latest,
}

file { '/etc/squid/squid.conf':
    source  => 'puppet:///modules/squid/squid.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    notify  => Service['squid'],
    require => Package['squid'],
}

service { 'squid':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['squid'],
}

}
