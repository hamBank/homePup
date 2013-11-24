resource sys_debmir {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd16;
    disk      /dev/raid5_filer/sys_debmir;
    meta-disk internal;
    address   192.168.209.88:7804;
  }
  on vein {
    device    /dev/drbd16;
    disk      /dev/raw_vein1/sys_debmir;
    address   192.168.209.48:7804;
    meta-disk internal;
  }
}
