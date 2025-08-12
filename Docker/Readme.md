<p align="center">
  <a href="Readme.en.md">
    <img src="https://img.shields.io/badge/⏻-Switch%20to%20English-red?style=for-the-badge">
  </a>
</p>

# Docker🖥️


Aqui se mostrara la instalacion de Docker, la configuracion y el uso del Docker-compose.

A la hora de querer instalar Docker, podemos hacerlo desde la propia maquina virtual, pero tambien usando Ansible una vez que lo tenemos todo listo. Por ejemplo podemos crear un archivo .yml que se encargue de instalar justamente nuestro querido Docker.

CUIDADO⚠️: Ansible de normal siempre pedira las credenciales del usuario sudo para el uso de estos .yml, lo cual segurametne dara error. Para ello podemos añadir en el archivo **sudoers** el usuario de usa Ansible en el archivo hosts.ini, en mi caso al ser mi mismo usuario de Ubuntu.

<img width="593" height="795" alt="configuracion sudo user ansible" src="https://github.com/user-attachments/assets/bdedb6e3-e01e-48ad-9288-351afc4b7ece" />



## Install-Docker.yml

Este comando .yml nos servira para poder instalar docker en nuestra maquina virtual usando de intermediario el archivo hosts.ini.

<img width="979" height="807" alt="image" src="https://github.com/user-attachments/assets/76c7446e-46f9-41c6-ad15-604a2570332e" />


<img width="1804" height="139" alt="image" src="https://github.com/user-attachments/assets/5ee049fd-a638-4a1a-a832-a7dfc0bf1fa9" />


-------------------------------------------------

## Carpetas-Docker.yml

Este comando .yml se encargar de crear la estructura de carpetas, subcarpetas y copiar el docker-compose mas el prometheus.yml ya que es necesario.

<img width="858" height="1253" alt="image" src="https://github.com/user-attachments/assets/7486f65b-c38e-4b73-9853-a9b2cf736e78" />


Este comando en particular como dije, copia el docker-compose, prometheus.yml que es necesario para prometheus, copia un archivo de variables usado para las credenciales de grafana a la hora de crear el docker-compose, copiar un archivo de custom.ini para quitar la opcion de allow_sign_up para mas seguridad y aparte se encargar de ejecutar el docker-compose directamente.

-------------------------------------------------

## docker-compose.yml

Y este es el docker-compose, debio a que este comando en general varia en realidad de lo que queramos instalar, este se puede usar como plantilla, igualmente se muestra como funciona.

<img width="1098" height="1116" alt="image" src="https://github.com/user-attachments/assets/f252189a-b3d6-40df-a5ac-2d9dd7b66a49" />

<img width="375" height="658" alt="image" src="https://github.com/user-attachments/assets/1cd544f6-0df9-4d11-b46b-f8175beff19a" />

--------------------------------------------------

## prometheus.yml

Este .yml es necesario para el docker-compose, archivo almacenado en una carpeta dentro del apartado de Docker para mayor visibilidad de los demas .yml

<img width="409" height="344" alt="image" src="https://github.com/user-attachments/assets/16fdcee6-87b3-4f92-941e-80f41ac9cd96" />

## Copy.yml

Este .yml es un extra, y puede servir para copiar lo que queramos usando Ansible. Para ello siempre usamos **ansible-playbook -i hosts.ini Docker/<nombredelarchivoacopiar.yml>** Por supuesto, por motivos de seguridad, yo siempre separare en una carpeta los archivos Docker.

<img width="1025" height="239" alt="image" src="https://github.com/user-attachments/assets/5febd7f9-dc38-4df2-a96a-9f2d11a18593" />

## custom.ini

Este archivo cuenta con una opcion para deshabilitar el allow_sign_up, ya que por defecto en grafana lo pone como true.






