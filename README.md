<p align="center">
  <a href="README.en.md">
    <img src="https://img.shields.io/badge/⏻-Switch%20to%20English-red?style=for-the-badge">
  </a>
</p>



<h2 align="center">Proyecto propio: Servidor Jellyfin usando diferentes tecnologias🖥️</h2>

Este proyecto fue pensado para usar **Jellyfin** y poder montar una infrestructura tocando todo lo necesario de un perfil **Devops** como el mio, como estaba cansado de tener mis peliculas y series en mi disco duro decidi montar usando mis conocimientos y de paso tocando todo tipo de **tecnologias** y implementaciones un servidor en la nube usando **Azure** como herramienta principal, para asi yo poder ver series y peliculas cuando quiera y donde quiera.

**Atencion ⚠️ Este codigo utiliza infraestuctura y credenciales personales, se puede clonar el repositorio pero la creacion de secrets y credenciales personales debes añadirlo tu, nunca subas tus credenciales a tu repositorio por seguridad**

**Archivos de ejemplo puestos directamente en una carpeta especial, tanto archivo de terraform como archivos de configuracion de Ansible y wireguard**

<p align="center">Indice de tecnologias usadas en mi proyecto</p>

  - Github Actions[🔥](./.github/workflows/terraform1.yml)
  
  - Terraform[🗿](./UbunReal.tf)

  - Conexion a la mquina virtual🛜

  - Wireguard[🌐](./Wireguard)

  - Ansible[🅰](./Ansible)

  - Docker[🖥️](./Docker)

  - Jellyfin🐬

  - Grafana - Prometheus📊⚡
----------------------------------------

### Carpetas y plantillas para que puedas hacer tu propio servidor[📁](./Example-plantillas)
------------------------------------------------
## 1º: Creacion de archivo Terraform y añadiendolo al workflow🗿

  - Añadiendo el archivo de **Terraform** al workflow para el uso de Github Actions.

  - Dentro del workflow, esta el **deploy.yml** necesario para el despliegue en Azure.

## Github Actions🔥

Este apartado lo puedes ver en la documentacion explicado correctamente, tambien puedes verlo en el workflow para que puedas ver como esta relacionado aparte de tener una carpeta con las plantillas para quien quiera hacerlo.

## 2º: Conexion de la maquina virtual🛜

La conexion de la maquina virtual debido a la **VPN** esta solo se conectara si tenemos activo wireguard en nuestro cliente, asi lo tenemos asegurado, este punto se vera reforzado en el siguiente apartado.

  -  Archivo de prueba para la conexion de la Maquina virtual creada mediante terraform y automatizada por github Action.

      ![image](https://github.com/user-attachments/assets/c881ca55-2b3c-41a0-bffc-fad9345569e8)

## 3º: Wireguard🌐

  El uso de la **VPN**, me ayudara a gestionar de mejor manera y aplicar una capa de seguridad mas sofisticada
  para mejorar la infraestructura. Ademas de añadir dicha VPN para que el tunel **SSH** de la maquina virtual sea
  seguro.

  - Como uso de VPN y por temas de seguridad, Wireguard nos ayudara.

    ![image](https://github.com/user-attachments/assets/76d4cd7a-27b4-4902-b553-2fb18c60b95d)

  - Activar la interfaz

    ![image](https://github.com/user-attachments/assets/58d6b011-f9db-47cc-a7e9-0dcabb134b91)

  - Y para que se inicie automatico

    ![image](https://github.com/user-attachments/assets/bf0db633-d0c8-4172-ae08-89f5a2e09fbe)
    
  - Y dicha configuracion puesta en windows
    
    ![image](https://github.com/user-attachments/assets/fda30bae-6d54-4df8-8e77-7e764bd08afc)

## 4º: Ansible🅰

  **Ansible** es una poderosa herramienta para la automatizacion y despliegue general en el sector DevOps, ya que nos permite simplificar y agilizar la administracion de infraestructura. Funciona automatizando tareas cotidianas, desde la configuracion de servidores y la instalacion de software hasta el despliegue de aplicacion y la orquestacion de flujos de trabajo     complejos, elegi dicha herramiena porque es indispensable aprender a usarla y saber como funciona ya que como dije, es extremadamente util para la facilidad y automatizacion.


## 5º: Docker🖥️
 **Docker** es una plataforma de codigo abierto que permite crear, probar e implementar aplicaciones rapidamente. Esto se hace empaquetando software en unidades estandarizadas llamadas contenedores que incluyen todo lo necesario para que el software se ejecute, incluidas bibliotecas, herramientas de sistema, codigo y version ejecutable. Esto nos permite un mayor control y facilidad para crear infraestructuras y querer controlarlas de mejor manera.

    

