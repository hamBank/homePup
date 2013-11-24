#Apt class - if we are on Debian we should include the correct sub-class to
#configure the OS updates
class apt {
  case $::operatingsystemrelease {
    'jessie/sid': {
      include aptsetup::unstable
    }
    'bingo/squeeze': {
      include aptsetup::squeeze
    }
    default: {
      notify 'Eeeek unknown OS matched'
    }
  }
}
