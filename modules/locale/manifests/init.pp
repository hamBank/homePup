#dopco
class locale {

  file { '/etc/locale.gen':
    source  => [
      "puppet:///modules/locale/locale.gen.${::hostname}",
      'puppet:///modules/locale/locale.gen',
    ],
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  exec { '/usr/sbin/locale-gen':
    subscribe   => File['/etc/locale.gen'],
    refreshonly => true
  }

}

