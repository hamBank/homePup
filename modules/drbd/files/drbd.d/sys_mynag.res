resource sys_mynag {
  disk {
	fencing resource-only;
  }
  net {
        allow-two-primaries;
  }
  handlers {
    fence-peer "/usr/lib/drbd/crm-fence-peer.sh";
    after-resync-target "/usr/lib/drbd/crm-unfence-peer.sh";
  }
  on filer {
    device    /dev/drbd19;
    disk      /dev/raid5_filer/sys_mynag;
    meta-disk internal;
    address   192.168.209.88:7807;
  }
  on vein {
    device    /dev/drbd19;
    disk      /dev/raw_vein1/sys_mynag;
    address   192.168.209.48:7807;
    meta-disk internal;
  }
}
