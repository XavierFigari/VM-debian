#!/bin/bash
virt-install \
--initrd-inject=preseed.cfg \
--disk pool=default,size=4,bus=virtio,format=qcow2 \
--name deb \
--memory 1024 \
--vcpus 1 \
--os-variant=debian12 \
--virt-type=kvm \
--network default,model=virtio \
--graphics none \
--noautoconsole \
--wait -1 \
--location ~/Projects/VM/debian-12.5.0-amd64-netinst.iso \
--extra-args="auto console=ttyS0, 115200n8 serial"				\

## Explications :
# --noautoconsole : ne pas se connecter directement dans la console
#                   (suivre l'installation à partir du virt-manager).
# --wait -1 : permet à virt-install d'attendre que l'installation
#             soit terminée et la VM rebootée
