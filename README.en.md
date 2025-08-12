<p align="center">
  <a href="README.md">
    <img src="https://img.shields.io/badge/⏻-Cambiar%20a%20Español-green?style=for-the-badge">
  </a>
</p>

<h2 align="center"> Jellyfin server using different technologies 🖥️</h2>

This project was deigned to use **Jellyfin** and be able to set up an infraestructure by touching everything necessary from a **Devops** profile like mine, 
since I was tired of having my movies and series on my hard drive I decided to set up using my knowledge and incidentally touching all kinds of **technologies** and implementations a cloud server using **Azure** as the main tool, so I can watch series and movies whenever and wherever I want.

***Atention ⚠️ This code uses infrastructure and personal credentials, you can clone the repository but you must add the creation of secrets and personal credentials, never upload your credentials to your repository for security***

***Example files placed directly in a special folder, both terraform file and Ansible and wireguard configuration files***

<p align="center">Index of technologies used in my project </p>

  - Terraform[🗿](./UbunReal.tf)
  
  - Github Actions[🔥](./.github/workflows/terraform1.yml)
  
  - Conexion a la mquina virtual / *Connection the virtual machine*🛜

  - Wireguard[🌐](./Wireguard)

  - Ansible[🅰](./Ansible)

  - Docker[🖥️](./Docker)

  - Jellyfin🐬

  - Grafana - Prometheus📊⚡
----------------------------------------

## *Folders and templates so you can make your own server.*[📁](./Example-plantillas)

## 1º: Creation archive terraform and add the workflow🗿

Adding the **terraform** file to the workflow for using github Actions

Inside the workflow, its **desploy.yml** required for desployment in Azure

## Github Actions🔥

*You can see this section in the documentation explained correctly, you can also see it in the workflow so you can see how it is related apart from having a folder with the templates for whoever wants to do it.*

## 2º: Conection the virtual machine 🛜

The connection of the virtual machine due to the **VPN** will only connect if we have wireguard active on our client, thus we have it assured, this point will be reinforced in the next section.

- Test file the connection of the Virtual Machine created through terraform and automated by github Action.

   ![image](https://github.com/user-attachments/assets/c881ca55-2b3c-41a0-bffc-fad9345569e8)

## 3º: Wireguard🌐

Using the **VPN** will help me manage better and apply a more sophisticated layerof security to improve infraestructure. In addition to adding said **VPN** so that the **SSH** tunnel of the virtual machine is sure.

- As a VPN use and for security reasons, wireguard will help us

    ![image](https://github.com/user-attachments/assets/76d4cd7a-27b4-4902-b553-2fb18c60b95d)

- Activate the interface

    ![image](https://github.com/user-attachments/assets/58d6b011-f9db-47cc-a7e9-0dcabb134b91)

- and so that it starts automatically

    ![image](https://github.com/user-attachments/assets/bf0db633-d0c8-4172-ae08-89f5a2e09fbe)

- and said configuration put in Windows
    
    ![image](https://github.com/user-attachments/assets/fda30bae-6d54-4df8-8e77-7e764bd08afc)

  ## 4º: Ansible🅰

  **Ansible** is a powerful tool for automation and general deployment in the DevOps sector, as it allows us to simplify and streamline infraestructure management. It works by automating everyday tasks, from configuring servers and installing software to desploying applications and orchestrating complex workflows.
  I chose this tool because it is essential to learn, how to use it and know how it works since, as i said, it is extremely useful for ease and automation.

  ## 5º: Docker🖥️

  **Docker** is an open source platform that allows you to quickly build, test, and deploy applications.
  This is done by packaging software into standardized units called containers that include everything necessary for the software to run, including libraries, system tools, code, and executable version. This allows us greater control and ease to create infrastructures and want to control them in a better way.
