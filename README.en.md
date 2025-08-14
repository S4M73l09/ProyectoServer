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

  ## 4º: Ansible[🅰](./Ansible)

  **Ansible** is a powerful tool for automation and general deployment in the DevOps sector, as it allows us to simplify and streamline infraestructure management. It works by automating everyday tasks, from configuring servers and installing software to desploying applications and orchestrating complex workflows.
  I chose this tool because it is essential to learn, how to use it and know how it works since, as i said, it is extremely useful for ease and automation.

  ## 5º: Docker[🖥️](./Docker)

  **Docker** is an open source platform that allows you to quickly build, test, and deploy applications.
  This is done by packaging software into standardized units called containers that include everything necessary for the software to run, including libraries, system tools, code, and executable version. This allows us greater control and ease to create infrastructures and want to control them in a better way.

  ## 6º: Jellyfin🐬

  Due to the ease of Jellyfin when it comes to not only installing it which was used within the docker-compose, I will show its configuration, normally jellyfin uses port 8096, by entering the IP of the **VPN** and followed of the port is more than enough to access.

  <img width="1224" height="677" alt="configuracion Jellyfin" src="https://github.com/user-attachments/assets/2768a64f-7a68-4cda-aeb3-e873b354c73b" />

  We follow its installation and configure everything, it is super simple, you just have to follow the jellyfin instructions and that's it. To test it, I decided to add multimedia content to the folder where jellyfin normally reads which is placed in my docker-compose, copy a video from my local computer and add it   to the created library.

  <img width="744" height="402" alt="image" src="https://github.com/user-attachments/assets/11419931-b245-4702-a372-840e9feefbbc" />

  Use this small .yml to copy said video and paste it into the folder where Jellyfin views the multimedia content.

  <img width="826" height="213" alt="image" src="https://github.com/user-attachments/assets/233f8335-53b1-4edd-8929-299b6f8f0651" />

  We'll see if the video is there and if he recognizes it.

  <img width="1193" height="152" alt="image" src="https://github.com/user-attachments/assets/d0c66192-af2e-47fb-bdfd-f7320545ae20" />


  ## 7º: Grafana - Prometheus📊⚡

  They are two open source tools widely used together for monitoring and visualizing system and application metrics. Prometheus specializes in collecting and storing performance metrics, using a time series-based database model. It also has an alert system that allows you to configure rules based on PromQL expressions to detect abnormal conditions and send notifications.

  Grafana in any case is an open source data visualization platform that focuses on the creation, exploration and analysis of dashboards to understand the data, regardless of its origin.

  And this makes Prometheus in charge of collecting metrics and graphics for its visualization.

  First, Grafana and Prometheus are installed at the same time in the same docker-compose.yml file so we can see that it is a simple installation inside the container. The only thing we need as such is to configure each one, to do this we will first enter Prometheus which is in charge of the metrics.

  ### **Prometheus**

  We access prometheus with port 9090, so we access using the same terminology as Jellyfin, once accessed it will show us a deployment which we also need to configure.

  <img width="1248" height="517" alt="image" src="https://github.com/user-attachments/assets/49b39913-96a7-478b-b9e7-cef40a0fa7df" />

  We can also see precisely which services are being monitored and which are not.

  <img width="2544" height="701" alt="image" src="https://github.com/user-attachments/assets/1457d4bc-7f40-4656-bc73-afd83f7607f8" />

  Here there is a problem as shown, **cadvisor** needs the use of cgroups, which are blocked in some Linux distributions in clouds such as Azure, AWS or Google cloud, so unfortunately this problem cannot be solved at least until that the virtual machine is not changed to one that hosts said requirement.

  But here we see that, for example, it works by recording metrics without problems.

  <img width="678" height="275" alt="image" src="https://github.com/user-attachments/assets/667e0ecb-1d6d-4230-a2b6-152e77f82811" />

  ### **Grafana**

  We also access Grafana using its default port which is placed in the docker-compose but I also put it in port 3000. Grafana asks us for credentials which are also entered using the docker-compose variables file, I remember again that all this is precisely in the respective folder.

  <img width="1232" height="989" alt="inicio de grafana" src="https://github.com/user-attachments/assets/5747521b-40fd-410d-af38-b0f381435042" />

  <img width="1199" height="569" alt="image" src="https://github.com/user-attachments/assets/0f77117c-050e-4d12-94d3-deb9379cdda9" />

  Now to add said dashboard, we must go to the menu on the left and click on the connections section, and add Prometheus as data sources.

  Next we can create the dashboard.

  We configure this dashboard by choosing the Prometheus data sources

  <img width="260" height="339" alt="image" src="https://github.com/user-attachments/assets/d9bb0a5a-79f8-43e5-8eba-ba7291a4d63f" /> <img width="241" height="391" alt="image" src="https://github.com/user-attachments/assets/f5d89932-85f1-496a-8bb4-3758fe31bacf" /> <img width="301" height="362" alt="image" src="https://github.com/user-attachments/assets/25388ad7-cafd-4328-a18e-b03a98a5dc27" />

  Y despues de añadirlo, ya estaria dicho dashboard.

  <img width="897" height="501" alt="image" src="https://github.com/user-attachments/assets/2cd06e80-7872-4999-989c-2fadd4e54df5" />

  -----------------------------------------------------------------------------

  ### **Creation of alerts**

  To create the Alert, we must create it in our dashboard.

  <img width="895" height="499" alt="image" src="https://github.com/user-attachments/assets/72a3b419-1c57-4f74-bcf5-15c4cf1888f9" />

  <img width="710" height="361" alt="image" src="https://github.com/user-attachments/assets/57468f59-5381-416e-ab77-07ee0172affa" />

  <img width="885" height="746" alt="image" src="https://github.com/user-attachments/assets/0a11fb7d-a715-4610-af83-a40108263e46" />

  This alert will be responsible for measuring CPU usage. When this exceeds 85%, Grafana will alert using the email we added. Of course, the option for Grafana to have **SMTP** service can be used in the docker-compose. Adding this line to grafana.ini

  <img width="289" height="163" alt="image" src="https://github.com/user-attachments/assets/c731f0c9-b424-48a3-8188-d2eb38970247" />

  or if we use Ansible, mount it as a volume as was done with custom.ini for example.

  <img width="264" height="103" alt="image" src="https://github.com/user-attachments/assets/2c1baff9-c440-4df8-84d3-d5d181e82001" />

  likewise, this would be more than enough.

  <img width="868" height="717" alt="image" src="https://github.com/user-attachments/assets/a7213b51-29a4-4404-b8c4-ac267b190d9c" />

  and the alert is created.

  <img width="892" height="204" alt="image" src="https://github.com/user-attachments/assets/3c668408-5c5e-4542-a73b-345ceb8100e7" />

  ## Final

  With that the project will be completed, automated, scalable and fully monitored. It helped me to be able to learn future technologies more correctly when creating a professional infrastructure, of course this is just an example project chosen to improve the visualization of my technical skills, if you want to better see more technical documentation and advanced but also longer, I leave you the link to download the technical documentation of the project: here[👉Hello](https://docs.google.com/document/d/1qoJ3GWvP3NGs3c-weBnPwfEgy2D1yNvPTHCBq6mClAE/export?format=pdf)
