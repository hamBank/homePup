resource sys_fai-server {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd7;
    disk      /dev/raid5_filer/sys_fai-server;
    meta-disk internal;
    address   192.168.209.88:7795;
  }
  on vein {
    device    /dev/drbd7;
    disk      /dev/raw_vein1/sys_fai-server;
    address   192.168.209.48:7795;
    meta-disk internal;
  }
}
