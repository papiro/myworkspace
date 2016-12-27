#!/bin/sh

grep -E "[Ii]nvalid use[r]" /var/log/auth.log | 
grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" | 
cat /etc/badhosts - | 
sort -u > /etc/badhosts;

pfctl -f /etc/pf.conf
