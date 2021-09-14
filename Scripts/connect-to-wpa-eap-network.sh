NETWORK="network-name"
INTERFACE="wireless-interface"
USERNAME="username"
DOMAIN="domain"

nmcli connection add type wifi con-name $NETWORK ifname $INTERFACE ssid $NETWORK -- wifi-sec.key-mgmt wpa-eap 802-1x.eap ttls 802-1x.identity $USERNAME 802-1x.anonymous-identity $USERNAME 802-1x.domain-suffix-match $DOMAIN 802-1x.phase2-autheap gtc
