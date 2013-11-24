#make sure the fw doesn't have things we don't want on it
class fwPkg {
  package { 'fai-client':
    ensure => 'purged'
  }
  package { 'cfengine2':
    ensure => 'purged'
  }
  package { 'isc-dhcp-client':
    ensure => 'purged'
  }
  package { 'isc-dhcp-common':
    ensure => 'purged'
  }
  package { 'nfs-common':
    ensure => 'purged'
  }
  package { 'samba-common':
    ensure => 'purged'
  }
  package { 'samba-common-bin':
    ensure => 'purged'
  }
  package { 'smbclient':
    ensure => 'purged'
  }
  package { 'wget':
  ensure => 'purged'
  }
  package { 'dbus':
    ensure => 'latest'
  }
  package { 'pppstatus':
    ensure => 'latest'
  }
  package { 'pppoe':
    ensure => 'latest'
  }
  package { 'ppp':
    ensure => 'latest'
  }
  package { 'libpcap0.8':
    ensure => 'latest'
  }
  package { 'libhd16':
    ensure => 'latest'
  }
  package { 'libhal1':
    ensure => 'latest'
  }
  package { 'libexpat1':
    ensure => 'latest'
  }
  package { 'libdbus-1-3':
    ensure => 'latest'
  }
  package { 'hwinfo':
    ensure => 'latest'
  }

}
