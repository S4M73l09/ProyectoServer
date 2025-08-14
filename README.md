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
## 1º: Creacion de archivo Terraform y añadiendolo al workflow[🗿](./UbunReal.tf)

  - Añadiendo el archivo de **Terraform** al workflow para el uso de Github Actions.

  - Dentro del workflow, esta el **deploy.yml** necesario para el despliegue en Azure.

## Github Actions[🔥](./.github/workflows/terraform1.yml)

Este apartado lo puedes ver en la documentacion explicado correctamente, tambien puedes verlo en el workflow para que puedas ver como esta relacionado aparte de tener una carpeta con las plantillas para quien quiera hacerlo.

## 2º: Conexion de la maquina virtual🛜

La conexion de la maquina virtual debido a la **VPN** esta solo se conectara si tenemos activo wireguard en nuestro cliente, asi lo tenemos asegurado, este punto se vera reforzado en el siguiente apartado.

  -  Archivo de prueba para la conexion de la Maquina virtual creada mediante terraform y automatizada por github Action.

      ![image](https://github.com/user-attachments/assets/c881ca55-2b3c-41a0-bffc-fad9345569e8)

## 3º: Wireguard[🌐](./Wireguard)

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

## 4º: Ansible[🅰](./Ansible)

  **Ansible** es una poderosa herramienta para la automatizacion y despliegue general en el sector DevOps, ya que nos permite simplificar y agilizar la administracion de infraestructura. Funciona automatizando tareas cotidianas, desde la configuracion de servidores y la instalacion de software hasta el despliegue de aplicacion y la orquestacion de flujos de trabajo     complejos, elegi dicha herramiena porque es indispensable aprender a usarla y saber como funciona ya que como dije, es extremadamente util para la facilidad y automatizacion.

  Toda la explicacion y documentacion de Ansible, estara en su propia carpeta, puedes pinchar en el icono para ir a su ubicacion.

## 5º: Docker[🖥️](./Docker)

 **Docker** es una plataforma de codigo abierto que permite crear, probar e implementar aplicaciones rapidamente. Esto se hace empaquetando software en unidades estandarizadas llamadas contenedores que incluyen todo lo necesario para que el software se ejecute, incluidas bibliotecas, herramientas de sistema, codigo y version ejecutable. Esto nos permite un mayor control y facilidad para crear infraestructuras y querer controlarlas de mejor manera.

  Toda la documentacion de Docker estara en su respectiva carpeta, puedes pinchar en el icono para ir a su ubicacion.

## 6º: Jellyfin🐬

**Jellyfin** es un servidor multimedia gratuito y de código abierto que permite organizar, gestionar y compartir contenido multimedia digitales, como peliculas, series, musica y fotos, en dispositivos conectados en red. Es una solucion inteligente por si quieres guardar formato multimedia sin necesidad de un disco duro externo y con la facilidad de que es en la nube.

Debido a la facilidad de Jellyfin a la hora de no solo de instalarlo el cual se uso dentro del docker-compose, mostrare la configuracion de este, normalmente jellyfin usa el puerto 8096, con poner la ip de la **VPN** y seguida del puerto es mas que suficiente para acceder.

<img width="1224" height="677" alt="configuracion Jellyfin" src="https://github.com/user-attachments/assets/2768a64f-7a68-4cda-aeb3-e873b354c73b" />

Seguimos su instalacion y configuramos todo, es super sencillo solo se tiene que seguir las instrucciones de jellyfin y ya. Para probarlo decidi añadir en la carpeta puesta donde jellyfin normalmente lee contenido multimedia el cual esta puesta en mi docker-compose, copiar un video de mi equipo local y añadirlo a la biblioteca creada.

<img width="744" height="402" alt="image" src="https://github.com/user-attachments/assets/11419931-b245-4702-a372-840e9feefbbc" />

Utilice este pequeño .yml para copiar dicho video y pegarlo en la carpeta donde Jellyfin ve el contenido multimedia.

<img width="826" height="213" alt="image" src="https://github.com/user-attachments/assets/233f8335-53b1-4edd-8929-299b6f8f0651" />

Vemos si esta el video y si lo reconoce.

<img width="1193" height="152" alt="image" src="https://github.com/user-attachments/assets/d0c66192-af2e-47fb-bdfd-f7320545ae20" />


## 7º: Grafana - Prometheus📊⚡

Son dos herramientas de código abierto ampliamente utilizadas en conjunto para el monitoreo y la visualizacion de métricas de sistemas y aplicaciones. Prometheus se especializa en la recolección y almacenamiento de métricas de rendimiento, utilizando un modelo de bases de datos basados en series temporales. Tambien este cuenta con un sistema de alertas que permite configurar reglas basadas en expresiones PromQL para detectar condiciones anómalas y enviar notificaciones.

Grafana en todo caso es una plataforma de visualizacion de datos de tambien código abierto que se enfoca en la creación, exploracion y análisis de paneles (dashboards) para comprender los datos, sin importar su origen.

Y esto hace que Prometheus se encargue de la recoleccion de metricas y grafana de la visualizacion de este.

Primero, Grafana y Prometheus se instalan a la vez en el mismo archivo del docker-compose.yml por lo cual podemos ver es una isntalacion sencilla dentro del contenedor. Lo unico que necesitamos como tal es configurarlo cada uno, para ello primero entraremos en Prometheus el cual es el que se encarga de las metricas.

### **Prometheus**

Accedemos a prometheus con el puerto 9090, por lo cual accedemos usando la misma terminologia que la de Jellyfin, una vez accedido a esta nos mostrara un despliegue el cual necesitamos configurar tambien.

<img width="1248" height="517" alt="image" src="https://github.com/user-attachments/assets/49b39913-96a7-478b-b9e7-cef40a0fa7df" />

Podemos ver justamente tambien los servicios que se estan monitorizando y cuales no.

<img width="2544" height="701" alt="image" src="https://github.com/user-attachments/assets/1457d4bc-7f40-4656-bc73-afd83f7607f8" />

Aqui existe un problema como se muestra, **cadvisor** necesita el uso de cgroups, los cuales estan bloqueados en algunas distribuciones de linux en nubes como Azure, AWS o Google cloud, asi que desgraciadamente este problema no se puede solucionar al menos hasta que no se cambie de maquina virtual a una que aloje dicho requerimiento.

Pero aqui vemos, que por ejemplo, funciona registrando las metricas sin problemas.

<img width="678" height="275" alt="image" src="https://github.com/user-attachments/assets/667e0ecb-1d6d-4230-a2b6-152e77f82811" />

### **Grafana**

Accedemos a Grafana tambien usando su puerto por defecto el cual esta puesto en el docker-compose pero igualmente lo pongo, en el puerto 3000. Grafana nos pide credenciales los cuales estan puestos tambien usando el archivo de variables de docker-compose, vuelvo a recordar que todo esto esta justamente en las respectiva carpeta.

<img width="1232" height="989" alt="inicio de grafana" src="https://github.com/user-attachments/assets/5747521b-40fd-410d-af38-b0f381435042" />

<img width="1199" height="569" alt="image" src="https://github.com/user-attachments/assets/0f77117c-050e-4d12-94d3-deb9379cdda9" />


Ahora para añadir dicho dashboard, debemos dirigirnos al menu de la izquierda y darle al apartado de connections, y añadir Prometheus como data sources.

Siguiente ya poodemos crear el dashboard.

Configuramos dicho dashboard eligiendo el data sources de Prometheus

<img width="260" height="339" alt="image" src="https://github.com/user-attachments/assets/d9bb0a5a-79f8-43e5-8eba-ba7291a4d63f" /> <img width="241" height="391" alt="image" src="https://github.com/user-attachments/assets/f5d89932-85f1-496a-8bb4-3758fe31bacf" /> <img width="301" height="362" alt="image" src="https://github.com/user-attachments/assets/25388ad7-cafd-4328-a18e-b03a98a5dc27" />

Y despues de añadirlo, ya estaria dicho dashboard.

<img width="897" height="501" alt="image" src="https://github.com/user-attachments/assets/2cd06e80-7872-4999-989c-2fadd4e54df5" />
------------------------------------------------------------------------------------------------------------

### **Creacion de alertas**

Para la creacion de la Alerta, debemos crearla en nuestro dashboard.

<img width="895" height="499" alt="image" src="https://github.com/user-attachments/assets/72a3b419-1c57-4f74-bcf5-15c4cf1888f9" />

<img width="710" height="361" alt="image" src="https://github.com/user-attachments/assets/57468f59-5381-416e-ab77-07ee0172affa" />

<img width="885" height="746" alt="image" src="https://github.com/user-attachments/assets/0a11fb7d-a715-4610-af83-a40108263e46" />

Esta alerta se encargara de medir el uso de CPU, cuando este sobrepase el 85%, Grafana alertara usando el correo que añadimos, se puede usar por supuesto en el docker-compose la opcion para que Grafana tenga servicio **SMTP**. Añdiendo esta linea al grafana.ini

[smtp]
enabled = true
host = smtp.gmail.com:587
user = TU_CORREO@gmail.com
password = TU_CONTRASEÑA_DE_APP
skip_verify = true
from_address = TU_CORREO@gmail.com
from_name = Grafana

o si usamos Ansible, montarlo como volumen como se hizo con custom.ini por ejemplo.

ejemplo:
grafana:
  image: grafana/grafana:latest
  volumes:
    - ./grafana.ini:/etc/grafana/grafana.ini


igualmente con esto seria mas que suficiente.

<img width="868" height="717" alt="image" src="https://github.com/user-attachments/assets/a7213b51-29a4-4404-b8c4-ac267b190d9c" />

y la alerta esta creada.

<img width="892" height="204" alt="image" src="https://github.com/user-attachments/assets/3c668408-5c5e-4542-a73b-345ceb8100e7" />

----------------------------------------------------------------------------------

## Final

Con eso el proyecto estarai finalizado, automatizado, escalable y totalmente monitorizado. Me sirvio para poder aprender de manera mas correcta las futuras tecnologias a la hora de crear una infraestructura profesional, por supuesto esto es solo un proyecto de ejemplo escogido para mejorar la visualizacion de mis habilidades tecnicas, si deseas ver de mejor manera una documentacion mas tecnica y avanzada pero tambien mas larga, te dejo el enlace de descargar de la documentacion tecnica del proyecto: aqui[👉Hola](https://docs.google.com/document/d/1qoJ3GWvP3NGs3c-weBnPwfEgy2D1yNvPTHCBq6mClAE/export?format=pdf)



