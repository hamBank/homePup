#Some doco here
class snmp {

  package { 'snmpd':
    ensure => latest,
  }

  package { 'snmp':
    ensure => latest,
  }

  file { '/etc/snmp/snmpd.conf':
    owner    => root,
    group    => root,
    mode     => '0640',
    source   => 'puppet:///modules/snmp/snmpd.conf',
    checksum => md5,
    notify   => Service['snmpd'],

  }

  service { 'snmpd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}


