#!/bin/bash

# Permitir tráfico ICMP solo por la interfaz wg0 / Allow ICMP traffic only over the wg0 interface
sudo iptables -A INPUT -i wg0 -p icmp -j ACCEPT
sudo iptables -A OUTPUT -o wg0 -p icmp -j ACCEPT

# (Opcional) Permitir tráfico SSH solo desde IP del cliente WireGuard / (Optional) Allow SSH traffic only from WireGuard client IP
sudo iptables -A INPUT -i wg0 -p tcp --dport 22 -s 10.8.0.2 -j ACCEPT

# Bloquear SSH desde fuera de wg0, si lo deseas / Block SSH from outside wg0, if desired
# sudo iptables -A INPUT -p tcp --dport 22 -j DROP
