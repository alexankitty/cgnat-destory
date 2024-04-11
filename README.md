# Scripts and maybe instructions?
It'll be pretty barebones until I feel like writing up a guide.  
The basic tl;dr, add the ports and protocol to ports.txt, an example is included. Add serverforwarding.sh to your PostUp and serverunforward.sh to your PostDown in your wireguard config.  
It's recommended to run a second instance of wireguard that is dedicated to this connection as the configs will be specific to that.  
Lastly setup pbr in openwrt, or whatever other router firmware you're using to allow routing of those ports to the destination server, and setup a port forward in the firewall to actually get the traffic to the right place.  
The rest of the traffic should make it to and from correctly, and the source IPs should be retained.  
