resource sys_pg74res {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd10;
    disk      /dev/raid5_filer/sys_pg74res;
    meta-disk internal;
    address   192.168.209.88:7798;
  }
  on vein {
    device    /dev/drbd10;
    disk      /dev/raw_vein1/sys_pg74res;
    address   192.168.209.48:7798;
    meta-disk internal;
  }
}
