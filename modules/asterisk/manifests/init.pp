#Asterisk
class asterisk {

  $packagelist = ['asterisk', 'asterisk-config', 'asterisk-dev',
  'asterisk-mp3', 'asterisk-core-sounds-en-g722',
  'asterisk-core-sounds-en-gsm', 'asterisk-core-sounds-en-wav',
  'asterisk-moh-opsound-opsound-g722', 'asterisk-moh-opsound-gsm',
  'asterisk-moh-opsound-wav', 'pulseaudio', 'speex', 'asterisk-voicemail' ]

  package { $packagelist:
    ensure => installed,
  }

  file { '/etc/asterisk':
    source  => 'puppet:///files/asterisk/etc/asterisk',
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    recurse => true,
    notify  => Service['asterisk'],
    # sshd will restart whenever you edit this file.
    require => Package['asterisk'],
  }

  service { 'asterisk':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}
