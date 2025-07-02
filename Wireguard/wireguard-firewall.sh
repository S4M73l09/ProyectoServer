#Activar reenvio IP (No me acuerdo si estaba activado aun)
echo 1 > /proc/sys/net/ipv4/ip_forward

# ICMP solo desde el tunel
iptables -A INPUT -i wg0 -p icmp -j ACCEPT
iptables -A OUTPUT -o wg0 -p icmp -j ACCEPT

#Permitir SSH solo por wg0
iptables -A INPUT -i wg0 -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -o wg0 -p tcp --sport 22 -j ACCEPT

#(opcional) Permitir SSH desde tu IP pública como puerta de emergencia
#Sustituye esta IP por la tuya real:
iptables -A INPUT -s 84.126.17.151 -p tcp --dport 22 -j ACCEPT

#Denegar cualquier otro intento de acceso SSH
iptables -A INPUT -p tcp --dport 22 -j DROP

#Permitir reenvio desde tunel y NAT para salida a Internet
iptables -A FORWARD -i wg0 -j ACCEPT
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

logger "[Wireguard] Túnel wg0 levantado y reglas aplicadas"
echo "[Wireguard] Túnel wg0 levantado correctamente con iptables aplicadas" > /dev/tty1
