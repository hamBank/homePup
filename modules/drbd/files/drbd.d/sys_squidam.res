resource sys_squidam {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd13;
    disk      /dev/raid5_filer/sys_squidam;
    meta-disk internal;
    address   192.168.209.88:7801;
  }
  on vein {
    device    /dev/drbd13;
    disk      /dev/raw_vein1/sys_squidam;
    address   192.168.209.48:7801;
    meta-disk internal;
  }
}
