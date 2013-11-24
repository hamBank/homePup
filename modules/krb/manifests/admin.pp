#this should only be used on the admin hosts
class krb::admin {

  package { 'krb5-admin-server':
    ensure => installed,
  }

  package { 'krb5-kdc':
    ensure => installed,
  }

}

