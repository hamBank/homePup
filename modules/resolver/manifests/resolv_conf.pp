#defined class
  define resolver::resolv_conf(
    $searchpath,
    $nameservers,
    $domainname = $domain) {
    file { '/etc/resolv.conf':
      owner   => root,
      group   => root,
      mode    => '0644',
      content => template('resolver/resolv.conf.erb'),
    }
  }

