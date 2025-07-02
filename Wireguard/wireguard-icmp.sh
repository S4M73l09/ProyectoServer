#!/bin/bash

# Permitir tráfico ICMP solo por la interfaz wg0
sudo iptables -A INPUT -i wg0 -p icmp -j ACCEPT
sudo iptables -A OUTPUT -o wg0 -p icmp -j ACCEPT

# (Opcional) Permitir tráfico SSH solo desde IP del cliente WireGuard
sudo iptables -A INPUT -i wg0 -p tcp --dport 22 -s 10.8.0.2 -j ACCEPT

# Bloquear SSH desde fuera de wg0, si lo deseas
# sudo iptables -A INPUT -p tcp --dport 22 -j DROP
