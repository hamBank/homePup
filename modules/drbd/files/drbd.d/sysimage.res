resource sysimage {
  net {
  	allow-two-primaries;
  }
  on filer {
    device    /dev/drbd1;
    disk      /dev/raid5_filer/system_image;
    meta-disk internal;
    address   192.168.209.88:7789;
  }
  on vein {
    device    /dev/drbd1;
    disk      /dev/raw_vein1/system_image;
    address   192.168.209.48:7789;
    meta-disk internal;
  }
}
