#!/bin/bash
vm=deb
virsh shutdown $vm
virsh destroy $vm
virsh undefine $vm
# imgdir=/var/lib/libvirt/images
imgdir=/var/lib/libvirt/images
img=$imgdir/$vm.qcow2
sudo rm $img 
echo "Image destroyed : $img"
echo "Contents of $imgdir :" 
sudo ls -l $imgdir 
