#!/bin/sh -x
IP_ADDRESS=$(ifconfig | grep -E 'inet.[0-9]' | grep -v '127.0.0.1' | awk '{ print $2}')

sysrc openhab_enable="YES"

service openhab restart 2>/dev/null

echo -e "OpenHAB now installed.\n" > /root/PLUGIN_INFO
echo -e "\nPlease open your web browser and go to http://${IP_ADDRESS}:8080 to configure OpenHAB.\n" >> /root/PLUGIN_INFO