resource sys_utorman {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd15;
    disk      /dev/raid5_filer/sys_utorman;
    meta-disk internal;
    address   192.168.209.88:7803;
  }
  on vein {
    device    /dev/drbd15;
    disk      /dev/raw_vein1/sys_utorman;
    address   192.168.209.48:7803;
    meta-disk internal;
  }
}
