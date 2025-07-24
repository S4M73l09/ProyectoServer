#Activar reenvio IP (Por si no te acuerdas si estaba activado aun) / Activate IP forwarding (In case you don't remember if it was activated yet)
echo 1 > /proc/sys/net/ipv4/ip_forward

# ICMP solo desde el tunel / ICMP only from the tunnel
iptables -A INPUT -i wg0 -p icmp -j ACCEPT
iptables -A OUTPUT -o wg0 -p icmp -j ACCEPT

#Permitir SSH solo por wg0 / Allow SSH only per wg0
iptables -A INPUT -i wg0 -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -o wg0 -p tcp --sport 22 -j ACCEPT

#(opcional) Permitir SSH desde tu IP pública como puerta de emergencia
#Sustituye esta IP por la tuya real / 
#(optional) Allow SSH from your public IP as an emergency door
#Sustituye this IP for yours real:
iptables -A INPUT -s ip_publica_ip_public -p tcp --dport 22 -j ACCEPT

#Denegar cualquier otro intento de acceso SSH / Deny any further SSH access attempts
iptables -A INPUT -p tcp --dport 22 -j DROP

#Permitir reenvio desde tunel y NAT para salida a Internet / Allow forwarding from tunnel and NAT for Internet output
iptables -A FORWARD -i wg0 -j ACCEPT
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

logger "[Wireguard] Túnel wg0 levantado y reglas aplicadas"
echo "[Wireguard] Túnel wg0 levantado correctamente con iptables aplicadas" > /dev/tty1
