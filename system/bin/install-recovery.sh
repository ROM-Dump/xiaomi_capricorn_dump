#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29406542:90ee291d97133d2282d4fb2858f9c677919b9fc7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24646986:dfdfe7be1d1cd8fee0a4d9b12bb79265386860f0 EMMC:/dev/block/bootdevice/by-name/recovery 90ee291d97133d2282d4fb2858f9c677919b9fc7 29406542 dfdfe7be1d1cd8fee0a4d9b12bb79265386860f0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
