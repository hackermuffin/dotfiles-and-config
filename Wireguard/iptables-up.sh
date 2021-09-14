iptables -A FORWARD -i %i -j ACCEPT
iptables -A FORWARD -o %i -j ACCEPT
iptables -t nat -A POSTROUTING -o ens3 -j MASQUERADE
sysctl net.ipv4.ip_forward=1
