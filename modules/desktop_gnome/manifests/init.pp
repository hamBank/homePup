#yes yes doco
class desktop_gnome {
  package { 'rapidsvn': ensure => latest }
  package { 'subversion': ensure => latest }
  package { 'subversion-tools': ensure => latest }
  package { 'chromium': ensure => latest }
  package { 'flashplugin-nonfree': ensure => latest }
  package { 'iceweasel': ensure => latest }

}
