#doco
class drbd {

  package { 'drbd8-utils': ensure => latest }

  file { '/etc/drbd.d':
    owner   => root,
    group   => root,
    mode    => '0750',
    source  => 'puppet:///modules/drbd/drbd.d',
    recurse => true,
  }

}
