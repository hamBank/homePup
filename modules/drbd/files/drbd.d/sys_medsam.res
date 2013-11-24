resource sys_medsam {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd9;
    disk      /dev/raid5_filer/sys_medsam;
    meta-disk internal;
    address   192.168.209.88:7797;
  }
  on vein {
    device    /dev/drbd9;
    disk      /dev/raw_vein1/sys_medsam;
    address   192.168.209.48:7797;
    meta-disk internal;
  }
}
