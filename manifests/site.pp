# import "templates"
# import "nodes"
import 'modules'

filebucket { 'main': server => 'puppet.my.hups.net' }

# global defaults
File { backup => main }

import 'classes/*.pp'

node default {
  include apt::unstable
  #include krb5auth
  include users
  #include sshd
  #include ldap
  include ntp
  include snmp
  include bind
  include locale
  include nagios::target
  #include debUpdate
  import 'resolver'

 class { 'resolv_conf':
  domainname  => 'my.hups.net',
  searchpath  => ['my.hups.net', 'hups.net'],
  nameservers => ['192.168.1.88', '192.168.1.10', '192.168.1.1'],
  }
}

node kvm_server inherits default {
  include kvm::server
  include drbd
}

node kvm_default inherits default {
  include kvm::client
}

node catmon inherits kvm_default {
  include cacti
}

node tvop inherits kvm_default {
  include test_class
}

node puppetm inherits kvm_default {
  include test_class
}

node phomat inherits kvm_default {
  include asterisk
}

node phomas inherits kvm_default {
  include asterisk
}

node utorman inherits kvm_default {
  #    include utorrent
  include ocfs2
  include bt_shares
}

node medsam inherits kvm_default {
  include samba
  include ocfs2
  include bt_shares
  include subversion_repo
}

node squidam inherits kvm_default {
  include squid
}

node rundeck inherits kvm_default {
  include java
}

node dirbac inherits kvm_default {
  include dirvirsh
}

node rmeas inherits default {
  include aptsetup_unstable
  include ntp
  include snmp
  include nagios::target
  include users
  include sshd
  include ntp
  include fwPkg
}

node audplay inherits kvm_default {
  include samba
}

node mynag inherits kvm_default {
  include nagios
}

node ajpq inherits default {
  include desktop_gnome
}

node rd2s inherits kvm_server {
  include ocfs2
}

node vein inherits kvm_server {
  include ocfs2
}

node filer inherits kvm_server {
  include samba
  include ocfs2
  include bind::master
}
