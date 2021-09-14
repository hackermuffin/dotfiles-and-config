iptables -D FORWARD -i %i -j ACCEPT
iptables -D FORWARD -o %i -j ACCEPT
iptables -t nat -D POSTROUTING -o ens3 -j MASQUERADE
sysctl net.ipv4.ip_forward=0
