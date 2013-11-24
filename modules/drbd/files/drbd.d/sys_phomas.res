resource sys_phomas {
  net {
  	allow-two-primaries;
  }
  on filer {
    device    /dev/drbd3;
    disk      /dev/raid5_filer/sys_phomas;
    meta-disk internal;
    address   192.168.209.88:7791;
  }
  on vein {
    device    /dev/drbd3;
    disk      /dev/raw_vein1/sys_phomas;
    address   192.168.209.48:7791;
    meta-disk internal;
  }
}
