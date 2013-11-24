resource sys_phomo {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd11;
    disk      /dev/raid5_filer/sys_phomo;
    meta-disk internal;
    address   192.168.209.88:7799;
  }
  on vein {
    device    /dev/drbd11;
    disk      /dev/raw_vein1/sys_phomo;
    address   192.168.209.48:7799;
    meta-disk internal;
  }
}
