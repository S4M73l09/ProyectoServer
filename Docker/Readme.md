# Docker🖥️


Aqui se mostrara la instalacion de Docker, la configuracion y el uso del Docker-compose.

*The Docker installation, configuration and use of the Docker-compose will be shown here.*


A la hora de querer instalar Docker, podemos hacerlo desde la propia maquina virtual, pero tambien usando Ansible una vez que lo tenemos todo listo. Por ejemplo podemos crear un archivo .yml que se encargue de instalar justamente nuestro querido Docker.

*When wanting to install Docker, we can do it from the virtual machine itself, but also using Ansible once we have everything ready. For example, we can create an .yml file that is responsible for installing our beloved Docker.*


CUIDADO⚠️: Ansible de normal siempre pedira las credenciales del usuario sudo para el uso de estos .yml, lo cual segurametne dara error. Para ello podemos añadir en el archivo **sudoers** el usuario de usa Ansible en el archivo hosts.ini, en mi caso al ser mi mismo usuario de Ubuntu.


*CAUTION⚠️: Normally it will always ask for the sudo user's credentials to use these .yml, which will surely give an error. To do this we can add the user of use Ansible in the hosts.ini file to the **sudoers** file, in my case being the same Ubuntu user.*

<img width="593" height="795" alt="configuracion sudo user ansible" src="https://github.com/user-attachments/assets/bdedb6e3-e01e-48ad-9288-351afc4b7ece" />



## Install-Docker.yml

Este comando .yml nos servira para poder instalar docker en nuestra maquina virtual usando de intermediario el archivo hosts.ini.

*This .yml command will help us install docker on our virtual machine using the hosts.ini file as an intermediary.*


<img width="979" height="807" alt="image" src="https://github.com/user-attachments/assets/76c7446e-46f9-41c6-ad15-604a2570332e" />


<img width="1804" height="139" alt="image" src="https://github.com/user-attachments/assets/5ee049fd-a638-4a1a-a832-a7dfc0bf1fa9" />


-------------------------------------------------

## Carpetas-Docker.yml

Este comando .yml se encargar de crear la estructura de carpetas, subcarpetas y copiar el docker-compose mas el prometheus.yml ya que es necesario.

*This .yml command will be in charge of creating the structure of folders, subfolders and copying the docker-compose plus the prometheus.yml since it is necessary.*

<img width="709" height="1101" alt="image" src="https://github.com/user-attachments/assets/10b4abcf-1aa2-4e63-b007-bcc6d9df3fa6" />

Este comando en particular como dije, copia el docker-compose, prometheus.yml que es necesario para prometheus y copia un archivo de variables usado para las credenciales de grafana a la hora de crear el docker-compose, aparte se encargar de ejecutar el docker-compose directamente.

*This particular command, as I said, copies the docker-compose, prometheus.yml, which is necessary for prometheus, and copies a variable file used for the grafana credentials when creating the docker-compose, in addition to executing the docker. -compose directly.*

-------------------------------------------------

## docker-compose.yml

Y este es el docker-compose, debio a que este comando en general varia en realidad de lo que queramos instalar, este no se pondra como tal como plantilla, pero si como muestra de como funciona.

*And this is the docker-compose, because this command in general actually varies from what we want to install, it will not be put as such as a template, but as a sample of how it works.*

<img width="818" height="1279" alt="image" src="https://github.com/user-attachments/assets/fc705fb6-a1d9-498a-9551-d295e6678d3d" />


--------------------------------------------------

## prometheus.yml

Este .yml es necesario para el docker-compose, archivo almacenado en una carpeta dentro del apartado de Docker para mayor visibilidad de los demas .yml

*This.yml is necessary for the docker-compose, a file stored in a folder within the Docker section for greater visibility of the other.yml*

<img width="409" height="344" alt="image" src="https://github.com/user-attachments/assets/16fdcee6-87b3-4f92-941e-80f41ac9cd96" />

## Copy.yml

Este .yml es un extra, y puede servir para copiar lo que queramos usando Ansible. Para ello siempre usamos **ansible-playbook -i hosts.ini Docker/<nombredelarchivoacopiar.yml>** Por supuesto, por motivos de seguridad, yo siempre separare en una carpeta los archivos Docker.

This .yml is an extra, and can be used to copy whatever we want using Ansible. To do this we always use **ansible-playbook -i hosts.ini Docker/<filenamecopy.yml>** Of course, for security reasons, I will always separate the Docker files in a folder.

<img width="1025" height="239" alt="image" src="https://github.com/user-attachments/assets/5febd7f9-dc38-4df2-a96a-9f2d11a18593" />


--------------------------------------------------------------------





