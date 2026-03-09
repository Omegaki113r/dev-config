#! /bin/bash

nmcli con add type wifi ifname wlp7s0 con-name HotspotXXX autoconnect no ssid HotspotXXX
nmcli con modify HotspotXXX 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared
nmcli con modify HotspotXXX wifi-sec.key-mgmt wpa-psk
nmcli con modify HotspotXXX wifi-sec.psk "veryveryhardpassword1234"
#nmcli con modify HotspotXXX wifi-sec.proto rsn
#nmcli con modify HotspotXXX wifi-sec.pairwise ccmp
#nmcli con modify HotspotXXX wifi-sec.group ccmp
nmcli con up HotspotXXX
