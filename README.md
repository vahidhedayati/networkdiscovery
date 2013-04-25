networkdiscovery
================

This project gives some quick ways of doing network discovery + hints and tips


Problems with network discovery:

1. Time

2. Resources

3. So many approaches 


I have decided to put together some nice quick easy ways of discovering the network on this project


The main problem with network discovery is hammering services such as DNS whilst trying to get information on hosts.

If you can afford to set up a seperate DNS server or have spare resolvers on your network the most easiest way would be something like this:

           #!/bin/bash
            DNS_SERVER=10.1.1.2
            HOSTS=10.1.1.0/28
            nmap --dns-servers $DNS_SERVER -sP -r  $HOSTS
 
 
 
