#kvm sever styffs
  class kvm::server {
    package { 'kvm': ensure => latest }
    package { 'virt-manager': ensure => latest }
    #package { 'corosync': ensure => latest }
    #package { 'heartbeat': ensure => latest }
    package { 'mdadm': ensure => latest }
    package { 'lvm2': ensure => latest }
    package { 'uuid': ensure => latest }
    package { 'ifenslave-2.6': ensure => latest }

    file { '/etc/modprobe.d/bonding.conf':
      owner  => root,
      group  => root,
      mode   => '0640',
      source => 'puppet:///modules/kvm/bonding.conf',
    }

    file { '/etc/default/corosync':
      owner  => root,
      group  => root,
      mode   => '0640',
      source => 'puppet:///modules/kvm/corosync',
    }

    file { '/etc/corosync/corosync.conf':
      owner  => root,
      group  => root,
      mode   => '0640',
      source => 'puppet:///modules/kvm/corosync.conf',
    }

    file { '/etc/corosync/authkey':
      owner  => root,
      group  => root,
      mode   => '0400',
      source => 'puppet:///modules/kvm/authkey',
    }


  }

