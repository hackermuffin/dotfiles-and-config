#!/bin/bash

port_forward_down() {
  iptables -A FORWARD           \
	  -d ${DEST_IP}         \
	  -i ${IN_IFACE}        \
	  -p ${PROTOCOL}        \
	  -m ${PROTOCOL}        \
	  --dport ${PORT}       \
	  -j ACCEPT
  iptables -t nat -A PREROUTING \
	  -d ${SERV_ADDRESS}    \
	  -p ${PROTOCOL}        \
	  -m ${PROTOCOL}        \
	  --dport ${PORT}       \
	  -j DNAT               \
	  --to-destination ${DEST_IP}
}

# Remove port forward - should match port-forward-up.sh
DEST_IP="address_to_forward_to"
SERV_ADDRESS="address_to_forward_from"
IN_IFACE="interface_to_forward_from"
PROTOCOL="network_protocol_to_forward"
PORT="port_to_forward"
port_forward_down
