resource sys_puppetm {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd20;
    disk      /dev/raid5_filer/sys_puppetm;
    meta-disk internal;
    address   192.168.209.88:7808;
  }
  on vein {
    device    /dev/drbd20;
    disk      /dev/raw_vein1/sys_puppetm;
    address   192.168.209.48:7808;
    meta-disk internal;
  }
}
