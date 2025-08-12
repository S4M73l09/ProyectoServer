<p align="center">
  <a href="README.md">
    <img src="https://img.shields.io/badge/⏻-Cambiar%20a%20Español-green?style=for-the-badge">
  </a>
</p>

# Wireguard🌐

To improve security both for future projects and to learn more about the use and importance of VPNs, I wanted to use Wireguard to improve SSH security and as a protection mode.

### In this folder, the scripts used for Wireguard Automation are saved

-----------------------------------

 - ## Wireguard-icmp.sh

   ![image](https://github.com/user-attachments/assets/861db19c-9ce3-43b5-964c-ecfb48306d41)

  *This script allows us to have it **automated** so that it listens automatically and no problems arise with the Linux **firewall**

 - ## wireguard-firewall.sh

   ![image](https://github.com/user-attachments/assets/6fa43f24-0c06-49cf-8930-3099299d724a)

  This Script is responsible for allowing **SSH** and making the tunnel listen to SSH input, making it possible
  that said **VPN** must be needed for the protocol.

  - ## wireguard-firewall-clean.sh

   ![image](https://github.com/user-attachments/assets/cf20f131-2165-441d-93db-6228a4972d84)

   This script is responsible for clean the latest configuration when the **tunnel** is down.

   - ## Windows client configuration

   This screenshot shows the configuration proposed in the **Windows** client to be able to connect to said machine. This configuration can also be used to connect said VPN with mobile device or any other device

  ![Configuracion Windows cliente](https://github.com/user-attachments/assets/dc58971d-8551-4bd3-ab21-ca6e2804ae08)

  With everything configured and ready, the **VPN** is now useful and we can use it so that the SSH tunnel is well defended

  *This section the Wireguard **VPN** is done.*

