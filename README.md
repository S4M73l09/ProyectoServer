# Proyecto de practica propio: Creacion de servidor Jellyfin usando diferentes tecnologias.

1º: Creacion de archivo Terraform y añadiendolo al workflow.

  - Añadiendo el archivo de Terraform al workflow para el uso de Github Actions
  - Dentro del workflow, esta el deploy.yml necesario para el despliegue en Azure

2º: Conexion de la maquina virtual.

  - ![image](https://github.com/user-attachments/assets/c881ca55-2b3c-41a0-bffc-fad9345569e8)

3º: Wireguard

  El uso de la VPN, me ayudara a gestionar de mejor manera y aplicar una capa de seguridad mas sofisticada
  para mejorar la infraestructura. Ademas de añadir dicha VPN para que el tunel SSH de la maquina virtual sea
  seguro.

  - Como uso de VPN y por temas de seguridad, Wireguard nos ayudara.
    ![image](https://github.com/user-attachments/assets/76d4cd7a-27b4-4902-b553-2fb18c60b95d)

  - Activar la interfaz

    ![image](https://github.com/user-attachments/assets/58d6b011-f9db-47cc-a7e9-0dcabb134b91)

  - Y para que se inicie automatico

    ![image](https://github.com/user-attachments/assets/bf0db633-d0c8-4172-ae08-89f5a2e09fbe)
    
  - Y dicha configuracion puesta en windows
  - 
    ![image](https://github.com/user-attachments/assets/fda30bae-6d54-4df8-8e77-7e764bd08afc)
    

