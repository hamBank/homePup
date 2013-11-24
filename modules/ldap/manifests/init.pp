#doco
class ldap {

  package { 'libnss-ldapd':
    ensure => installed,
  }

  package { 'libnss-ldap':
    ensure => absent,
  }

  package { 'libpam-ldap':
    ensure => installed,
  }

  package { 'nscd':
    ensure => installed,
  }

  file { '/etc/nsswitch.conf':
    source  => 'puppet:///modules/ldap/nsswitch.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package['libnss-ldap'],
  }

  file { '/etc/ldap/ldap.conf':
    source  => 'puppet:///modules/ldap/ldap.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/nslcd.conf':
    source  => 'puppet:///modules/ldap/nslcd.conf',
    owner   => 'nslcd',
    group   => 'nslcd',
    mode    => '0640',
  }

  file { '/etc/libnss-ldap.conf':
    source  => 'puppet:///modules/ldap/libnss-ldap.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/libnss-ldap.secret':
    source  => 'puppet:///modules/ldap/libnss-ldap.secret',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
  }

}


