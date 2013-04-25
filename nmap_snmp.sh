#!/bin/bash

##################################
# Vahid Hedayati - April 2013 
# OK I think this by far will be the quickest and least intensive way of finding network devices.
# So long as you have snmp configured
# NMAP will discover IP and pass to snmp to get hostname

# Your snmp key
key="public"

for names in $(nmap -sP -n 10.1.1.0/24|grep "^Host"|awk '{print $2}'); do
        dns_name=$(snmpget -t 2 -v 1 -c $key $names .1.3.6.1.2.1.1.1.0 2>&1| grep -v Timeout|awk '{print $5}')
        echo $names $dns_name
done



