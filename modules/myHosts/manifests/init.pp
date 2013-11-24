#DOCO here
class myHosts {

  if $::hostname != 'krbmas' {
    host { $::hostname:
      ensure       => 'present',
      ip           => $::ipaddress,
      name         => $::fqdn,
      host_aliases => [$::hostname]
    }
  }

  if $::hostname != 'debmir' {
    @host { 'debmir':
      ensure       => 'present',
      ip           => '192.168.1.43',
      name         => 'debmir.my.hups.net',
      host_aliases => ['debmir']
    }
  }

  host { 'krbmas':
    ensure       => 'present',
    ip           => '192.168.1.42',
    name         => 'krbmas.my.hups.net',
    host_aliases => ['krb.my.hups.net','krb']
  }

  if $::hostname != 'filer' {
    host { 'filer':
      ensure       => 'present',
      ip           => '192.168.1.88',
      name         => 'filer.my.hups.net',
      host_aliases => ['filer','dns']
    }
  }
  host { 'puppetm':
    ensure       => 'present',
    ip           => '192.168.1.84',
    name         => 'puppetm.my.hups.net',
    host_aliases => ['puppet','puppetmaster']
  }

  if $::hostname != 'ldpmtr' {
    host { 'ldpmtr.my.hups.net':
    ip           => '192.168.1.35',
    host_aliases => ['ldap', 'ldpmtr'],
    }
  }
}
