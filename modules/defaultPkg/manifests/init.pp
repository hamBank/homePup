#Doco
class defaultPkg {
  package { 'localization-config': ensure => latest }
  package { 'firmware-linux-nonfree': ensure => latest }
  package { 'firmware-linux-free': ensure => latest }
  package { 'vim': ensure => latest }
  package { 'less': ensure => latest }
  package { 'rsync': ensure => latest }
  package { 'zsh': ensure => latest }


}

