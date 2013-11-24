#client detaile
class kvm::client {

  package { 'acpid': ensure => latest }

  file { '/etc/inittab':
    owner  => root,
    group  => root,
    mode   => '0640',
    source => 'puppet:///modules/kvm/inittab',
  }

  file { '/etc/default/grub':
    owner    => root,
    group    => root,
    mode     => '0640',
    source   => 'puppet:///modules/kvm/grub',
    checksum => md5,
    notify   => Exec['update-grub'],

  }

  exec { 'update-grub':
    path        => ['/usr/sbin','/sbin','/bin','/usr/bin'],
    refreshonly => true,
  }

}


