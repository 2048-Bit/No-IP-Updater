#!/bin/sh

clear

username="No_IPUsername"
password="No_IPPassword"
domain="hostname.noipaddress.com"
ip_addr=$(curl -4 icanhazip.com)

printf  "%s" "$ip_addr"

printf "\\nhttp://%s:%s@dynupdate.no-ip.com/nic/update?hostname=%s&myip=%s\\n" "$username" "$password" "$domain" "$ip_addr"

do_update=$(curl http://$username:$password@dynupdate.no-ip.com/nic/update?hostname=$domain&myip=$ip_addr)

printf "%s" "$do_update"
