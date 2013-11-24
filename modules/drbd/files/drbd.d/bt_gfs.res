resource bt_gfs {
  net {
  	allow-two-primaries;
  }
  on filer {
    device    /dev/drbd2;
    disk      /dev/raid5_filer/bt_gfs;
    meta-disk internal;
    address   192.168.1.88:7790;
  }
  on rd2s {
    device    /dev/drbd2;
    disk      /dev/rvg1/bt_gfs;
    address   192.168.1.47:7790;
    meta-disk internal;
  }
}

