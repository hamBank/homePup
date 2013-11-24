resource sys_ldap-master {
  net {
        allow-two-primaries;
  }
  on filer {
    device    /dev/drbd8;
    disk      /dev/raid5_filer/sys_ldap-master;
    meta-disk internal;
    address   192.168.209.88:7796;
  }
  on vein {
    device    /dev/drbd8;
    disk      /dev/raw_vein1/sys_ldap-master;
    address   192.168.209.48:7796;
    meta-disk internal;
  }
}
