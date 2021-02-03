# rbdtab generator

Automatic map ceph rbd device and mount file system on demand.

This is a systemd.generator(7) to configure automount and `rbd device map/unmap` accroding to `/etc/ceph/rbdtab` configure file.

It will map rbd device and mount file system on the first access of mount-point. Then unmount and unmap after idle for an hour.

See `rbdtab` in this repo for an example configure file.

## Dependencies

For Ubuntu:
```bash
sudo apt install ceph-common python3
```

## Installation

```bash
sudo make install
```
