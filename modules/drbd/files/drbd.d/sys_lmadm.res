resource sys_lmadm {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd18;
    disk      /dev/raid5_filer/sys_lmadm;
    meta-disk internal;
    address   192.168.209.88:7806;
  }
  on vein {
    device    /dev/drbd18;
    disk      /dev/raw_vein1/sys_lmadm;
    address   192.168.209.48:7806;
    meta-disk internal;
  }
}
