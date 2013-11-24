#standard auth class for all hosts
class krb::auth {

  package { 'libpam-krb5':
    ensure => installed,
  }

  package { 'krb5-user':
    ensure => installed,
  }

  file { '/etc/pam.d/common-account':
    source  => 'puppet:///files/etc/pam.d/common-account',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/pam.d/common-auth':
    source  => 'puppet:///files/etc/pam.d/common-auth',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/pam.d/common-password':
    source  => 'puppet:///files/etc/pam.d/common-password',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/pam.d/common-session':
    source  => 'puppet:///files/etc/pam.d/common-session',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

}
