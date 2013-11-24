resource sys_audplay {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd4;
    disk      /dev/raid5_filer/sys_audplay;
    meta-disk internal;
    address   192.168.209.88:7792;
  }
  on vein {
    device    /dev/drbd4;
    disk      /dev/raw_vein1/sys_audplay;
    address   192.168.209.48:7792;
    meta-disk internal;
  }
}
