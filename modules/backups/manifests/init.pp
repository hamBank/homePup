#Doco
class backups {
  $packagelist = ['dirvish']

  package { $packagelist:
    ensure => installed }

}
