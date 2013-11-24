#doco
class krb {

  package { 'krb5-config':
    ensure => installed,
  }

  file { '/etc/krb5.conf':
    source  => 'puppet:///files/etc/krb5.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['krb5-config'],
  }

}
