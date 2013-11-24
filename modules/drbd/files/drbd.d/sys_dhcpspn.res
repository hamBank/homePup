resource sys_dhcpspn {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd6;
    disk      /dev/raid5_filer/sys_dhcpspn;
    meta-disk internal;
    address   192.168.209.88:7794;
  }
  on vein {
    device    /dev/drbd6;
    disk      /dev/raw_vein1/sys_dhcpspn;
    address   192.168.209.48:7794;
    meta-disk internal;
  }
}
