# Other required parts of the dhcp server

Static IP for eth0 configure in /etc/network/interfaces
```
allow-hotplug eth0
iface eth0 inet static
address 192.168.20.1
netmask 255.255.255.0
network 192.168.20.0
broadcast 192.168.20.255
```

iptables saved in /etc/iptables.ipv4.nat
```
sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE  
sudo iptables -A FORWARD -i wlan0 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT  
sudo iptables -A FORWARD -i eth0 -o wlan0 -j ACCEPT
```
Loaded from /etc/rc.local
```
iptables-restore < /etc/iptables.ipv4.nat
```
