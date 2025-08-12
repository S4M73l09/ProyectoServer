<p align="center">
  <a href="README.en.md">
    <img src="https://img.shields.io/badge/⏻-Switch%20to%20English-red?style=for-the-badge">
  </a>
</p>

# Wireguard🌐

Para una mejora de seguridad tanto para futuros proyectos como para aprender mas el uso y la importancia de las VPNs, he querido usar Wireguard para mejorar la seguridad del SSH y como modo de proteccion.

### En esta carpeta, se guarda los scripts usados para la automatizacion de wireguard

-----------------------------------

 -  ## Wireguard-icmp.sh

   ![image](https://github.com/user-attachments/assets/861db19c-9ce3-43b5-964c-ecfb48306d41)

  Este script nos permite tener **automatizado** para que escuche de manera automatica y no surga problemas con el **firewall** de Linux.


 - ## wireguard-firewall.sh

   ![image](https://github.com/user-attachments/assets/6fa43f24-0c06-49cf-8930-3099299d724a)

  Este Script se encarga de permitir el **SSH** y hacer que el tunel escuche la entrada de SSH, haciendo posible
  que se tenga que necesitar dicha **VPN** para el protocolo.

 - ## wireguard-firewall-clean.sh

   ![image](https://github.com/user-attachments/assets/cf20f131-2165-441d-93db-6228a4972d84)

  Este script es responsable de limpiar la configuracion del **tunnel** cuando este cerrado o apagado.
    

 - ## Configuracion cliente Windows

  En esta captura se muestra la configuracion planteada en el cliente de **windows** para poder conectarme a dicha maquina, esta configuracion se puede usar tambien para conectar dicha VPN con algun dispositivo movil o cualquier otro dispositivo.

  ![Configuracion Windows cliente](https://github.com/user-attachments/assets/dc58971d-8551-4bd3-ab21-ca6e2804ae08)


 Con todo configurado y listo, la VPN ya sirve y podemos usarla para que el tunel SSH este bien defendido.
 
 Esta seccion de la **VPN** de wireguard ya esta completa.

