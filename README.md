<h2 align="center">Proyecto propio: Servidor Jellyfin usando diferentes tecnologias/*Jellyfin server using different technologies* 🖥️</h2>

Este proyecto fue pensado para usar **Jellyfin** y poder montar una infrestructura tocando todo lo necesario de un perfil **Devops** como el mio, como estaba cansado de tener mis peliculas y series en mi disco duro decidi montar usando mis conocimientos y de paso tocando todo tipo de **tecnologias** y implementaciones un servidor en la nube usando **Azure** como herramienta principal, para asi yo poder ver series y peliculas cuando quiera y donde quiera.

*This project was deigned to use **Jellyfin** and be able to set up an infraestructure by touching everything necessary from a **Devops** profile like mine, since I was tired of having my movies and series on my hard drive I decided to set up using my knowledge and incidentally touching all kinds of **technologies** and implementations a cloud server using **Azure** as the main tool, so I can watch series and movies whenever and wherever I want.*

**Atencion ⚠️ Este codigo utiliza infraestuctura y credenciales personales, se puede clonar el repositorio pero la creacion de secrets y credenciales personales debes añadirlo tu, nunca subas tus credenciales a tu repositorio por seguridad**

***Atention ⚠️ This code uses infrastructure and personal credentials, you can clone the repository but you must add the creation of secrets and personal credentials, never upload your credentials to your repository for security***

**Archivos de ejemplo puestos directamente en una carpeta especial, tanto archivo de terraform como archivos de configuracion de Ansible y wireguard**

***Example files placed directly in a special folder, both terraform file and Ansible and wireguard configuration files***


<p align="center">Indice de tecnologias usadas en mi proyecto/Index of technologies used in my project</p>

  - Github Actions[🔥](./.github/workflows/terraform1.yml)
  
  - Terraform[🗿](./UbunReal.tf)

  - Conexion a la mquina virtual / *Connection the virtual machine*🛜

  - Wireguard[🌐](./Wireguard)

  - Ansible[🅰](./Ansible)

  - Docker🖥️

  - Jellyfin🐬
----------------------------------------

### Carpetas y plantillas para que puedas hacer tu propio servidor. / *Folders and templates so you can make your own server.*[📁](./Example-plantillas)
------------------------------------------------
## 1º: Creacion de archivo Terraform y añadiendolo al workflow / *Creation archive terraform and add the workflow*🗿

  - Añadiendo el archivo de **Terraform** al workflow para el uso de Github Actions.

    *Adding the **terraform** file to the workflow for using github Actions*
  - Dentro del workflow, esta el **deploy.yml** necesario para el despliegue en Azure.
    
    *Inside the workflow, its **desploy.yml** required for desployment in Azure*


## Github Actions🔥

Este apartado lo puedes ver en la documentacion explicado correctamente, tambien puedes verlo en el workflow para que puedas ver como esta relacionado aparte de tener una carpeta con las plantillas para quien quiera hacerlo.

*You can see this section in the documentation explained correctly, you can also see it in the workflow so you can see how it is related apart from having a folder with the templates for whoever wants to do it.*

## 2º: Conexion de la maquina virtual / *Conection the virtual machine*🛜

La conexion de la maquina virtual debido a la **VPN** esta solo se conectara si tenemos activo wireguard en nuestro cliente, asi lo tenemos asegurado, este punto se vera reforzado en el siguiente apartado.

*The connection of the virtual machine due to the **VPN** will only connect if we have wireguard active on our client, thus we have it assured, this point will be reinforced in the next section*

  -  Archivo de prueba para la conexion de la Maquina virtual creada mediante terraform y automatizada por github Action.

      *Test file the connection of the Virtual Machine created through terraform and automated by github Action*

      ![image](https://github.com/user-attachments/assets/c881ca55-2b3c-41a0-bffc-fad9345569e8)

## 3º: Wireguard🌐

  El uso de la **VPN**, me ayudara a gestionar de mejor manera y aplicar una capa de seguridad mas sofisticada
  para mejorar la infraestructura. Ademas de añadir dicha VPN para que el tunel **SSH** de la maquina virtual sea
  seguro.

  *Using the **VPN** will help me manage better and apply a more sophisticated layerof security to improve infraestructure. In addition to adding said **VPN** so that the **SSH** tunnel of the virtual machine is sure*

  - Como uso de VPN y por temas de seguridad, Wireguard nos ayudara.

    *As a VPN use and for security reasons, wireguard will help us*

    ![image](https://github.com/user-attachments/assets/76d4cd7a-27b4-4902-b553-2fb18c60b95d)

  - Activar la interfaz

    *Activate the interface*

    ![image](https://github.com/user-attachments/assets/58d6b011-f9db-47cc-a7e9-0dcabb134b91)

  - Y para que se inicie automatico

    *and so that it starts automatically*

    ![image](https://github.com/user-attachments/assets/bf0db633-d0c8-4172-ae08-89f5a2e09fbe)
    
  - Y dicha configuracion puesta en windows

    *and said configuration put in Windows*
    
    ![image](https://github.com/user-attachments/assets/fda30bae-6d54-4df8-8e77-7e764bd08afc)

## 4º: Ansible🅰

  **Ansible** es una poderosa herramienta para la automatizacion y despliegue general en el sector DevOps, ya que nos permite simplificar y agilizar la administracion de infraestructura. Funciona automatizando tareas cotidianas, desde la configuracion de servidores y la instalacion de software hasta el despliegue de aplicacion y la orquestacion de flujos de trabajo     complejos, elegi dicha herramiena porque es indispensable aprender a usarla y saber como funciona ya que como dije, es extremadamente util para la facilidad y automatizacion.

***Ansible** is a powerful tool for automation and general deployment in the DevOps sector, as it allows us to simplify and streamline infraestructure management. It works by automating everyday tasks, from configuring servers and installing software to desploying applications and orchestrating complex workflows. I chose this tool because it is essential to learn      how to use it and know how it works since, as i said, it is extremely useful for ease and automation*
    

