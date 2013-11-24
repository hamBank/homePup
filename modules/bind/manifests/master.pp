#installs a master DNS server
class bind::master {

  file { '/var/lib/bind/':
    owner   => bind,
    group   => bind,
    mode    => '0750',
    source  => 'puppet:///modules/bind/zones/',
    recurse => true,
  }

  file { '/etc/bind/named.conf.local':
  owner  => bind,
  group  => bind,
  mode   => '0640',
  source => 'puppet:///modules/bind/etc/named.conf.local',
  }

  file { '/etc/bind/rndc.key':
  owner  => bind,
  group  => bind,
  mode   => '0600',
  source => 'puppet:///modules/bind/etc/rndc.key',
  }

  file { '/etc/bind/Khups.lan.+157+34101.key':
  owner  => bind,
  group  => bind,
  mode   => '0600',
  source => 'puppet:///modules/bind/etc/Khups.lan.+157+34101.key',
  }

  file { '/etc/bind/bind.keys':
  owner  => bind,
  group  => bind,
  mode   => '0600',
  source => 'puppet:///modules/bind/etc/bind.keys',
  }
}
