resource sys_testFai {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd14;
    disk      /dev/raid5_filer/sys_testFai;
    meta-disk internal;
    address   192.168.209.88:7802;
  }
  on vein {
    device    /dev/drbd14;
    disk      /dev/raw_vein1/sys_testFai;
    address   192.168.209.48:7802;
    meta-disk internal;
  }
}
