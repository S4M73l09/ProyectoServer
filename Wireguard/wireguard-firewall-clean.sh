#!/bin/bash
#Elimina solo las reglas que nosotros pusimos
iptables -D INPUT -i wg0 -p icmp -j ACCEPT
iptables -D OUTPUT -o wg0 -p icmp -j ACCEPT

iptables -D INPUT -i wg0 -p tcp --dport 22 -j ACCEPT
iptables -D OUTPUT -o wg0 -p tcp --sport 22 -j ACCEPT
iptables -D INPUT -s 84.126.17.151 -p tcp --dport 22 -j ACCEPT
iptables -D INPUT -p tcp --dport 22 -j DROP

iptables -D FORWARD -i wg0 -j ACCEPT
iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE

logger "[Wireguard] El túnel wg0 fue bajado y las reglas iptables fueron eliminadas"
echo "[Wireguard] El túnel wg0 fue bajado y las reglas iptables eliminadas" > /dev/tty1
