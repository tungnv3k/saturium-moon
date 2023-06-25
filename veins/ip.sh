#!/bin/sh

sudo touch /etc/netplan/00-netcfg.yaml

sudo cat >/etc/netplan/00-netcfg.yaml <<EOF

network:
    version: 2
    renderer: networkd
    ethernets:
        eth0:
            dhcp4: false
            dhcp6: false
            link-local: [ ipv4 ]
            addresses: [192.168.1.125/24]
            nameservers:
                addresses: [8.8.8.8,8.8.4.4]
            routes:
                - to: default
                  via: 192.168.1.1
EOF

sudo netplan apply
