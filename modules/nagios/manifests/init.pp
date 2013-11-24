#This is the scary nagios doco module
class nagios {
  package {
    'nagios3':
      ensure  => installed,
      alias   => 'nagios',
      ;
  }

  service {
    'nagios3':
      ensure     => running,
      alias      => 'nagios',
      hasstatus  => true,
      hasrestart => true,
      require    => Package[nagios],
  }

  # collect resources and populate /etc/nagios/nagios_*.cfg
  Nagios_host <<||>>
  Nagios_service <<||>>
  Nagios_hostextinfo <<||>>
}
