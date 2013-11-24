#doco shoudl go here..
class utorrent {

  $packagelist_kill = [
    'asterisk', 'asterisk-config', 'asterisk-dev',
    'asterisk-sounds-extra', 'asterisk-sounds-main', 'pulseaudio', 'speex']

  $packagelist = ['samba', 'ia32-libs']


  package { $packagelist_kill:
    ensure => purged,
  }

  package { $packagelist:
    ensure => installed,
  }

  file { '/srv/utorrent':
    source  => 'puppet:///files/utorrent',
    owner   => 'root',
    group   => 'root',
    mode    => '0666',
    recurse => true,
    ignore  => [ '.svn', '.dat', '.old' ],
  }

  file { '/srv/utorrent/utorrent-server-v3_0/utserver':
    source  => 'puppet:///files/utorrent/utorrent-server-v3_0/utserver',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    ignore  => [ '.svn', '.dat', '.old' ],
  }

}
