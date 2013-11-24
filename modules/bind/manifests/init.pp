#defaults for bind - interesting thign in the master
class bind {

  package { 'bind9': ensure => latest }

  include bind::master
}
