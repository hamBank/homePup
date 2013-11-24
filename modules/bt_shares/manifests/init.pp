#doco
class bt_shares {

  mount { '/srv/ocfs2_btdl':
    ensure  => mounted,
    atboot  => true,
    device  => 'UUID=7b199cd9-c3fb-44ad-9b7e-3134a7341546',
    fstype  => 'ocfs2',
    options => 'defaults',
    dump    => '0',
    pass    => '1',
    require => Class['ocfs2'];
  }

}
