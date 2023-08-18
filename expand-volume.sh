#!/bin/bash

# Menampilkan informasi partisi /dev/sda
fdisk -l /dev/sda | grep ^/dev

# Membuka utilitas parted untuk partisi /dev/sda
parted /dev/sda <<EOF
print
F
resizepart 3 100%
quit
EOF

# Melakukan resize physical volume
pvresize /dev/sda3

# Menampilkan informasi logical volume
lvdisplay

# Melakukan lvextend dan resize filesystem
sudo lvextend -r -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv
