resource sys_rmeas {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd12;
    disk      /dev/raid5_filer/sys_rmeas;
    meta-disk internal;
    address   192.168.209.88:7800;
  }
  on vein {
    device    /dev/drbd12;
    disk      /dev/raw_vein1/sys_rmeas;
    address   192.168.209.48:7800;
    meta-disk internal;
  }
}
