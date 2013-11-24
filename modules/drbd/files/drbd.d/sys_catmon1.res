resource sys_catmon1 {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd5;
    disk      /dev/raid5_filer/sys_catmon1;
    meta-disk internal;
    address   192.168.209.88:7793;
  }
  on vein {
    device    /dev/drbd5;
    disk      /dev/raw_vein1/sys_catmon1;
    address   192.168.209.48:7793;
    meta-disk internal;
  }
}
