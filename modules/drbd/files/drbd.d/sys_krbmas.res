resource sys_krbmas {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd17;
    disk      /dev/raid5_filer/sys_krbmas;
    meta-disk internal;
    address   192.168.209.88:7805;
  }
  on vein {
    device    /dev/drbd17;
    disk      /dev/raw_vein1/sys_krbmas;
    address   192.168.209.48:7805;
    meta-disk internal;
  }
}
