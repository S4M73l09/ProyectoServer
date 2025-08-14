<p align="center">
  <a href="Readme.en.md">
    <img src="https://img.shields.io/badge/⏻-Switch%20to%20English-red?style=for-the-badge">
  </a>
</p>
 
 
 # Ansible🅰

#### Ansible es una herramienta especialmente poderosa en el ambito DevOps ya que nos permite automatizar el despliegue de infraestructura tanto de maquinas en general como despliegue de servicios de una maquina en particular, en este proyecto se usa Ansible para una maquina en particular la cual nos servira para ahorrar mucho el trabajo una vez lo tengamos configurado.



## Creacion del Service principal

Para poder usar de mejor manera Ansible, es necesario crear un Service principal como hicimos a la hora de rear uno para el github Actions, por lo cual no es complicado, solo lo creamos y añadimos dichos credenciales que nos devuelva.

<img width="603" height="88" alt="image" src="https://github.com/user-attachments/assets/2cb40f46-190d-4035-9fbc-126d0fe4446a" />

<img width="599" height="86" alt="image" src="https://github.com/user-attachments/assets/cb7a56e4-6090-4a20-8025-20ef28c95571" />

En la ruta de .azure, si no esta la creamos sin problemas.

<img width="601" height="343" alt="image" src="https://github.com/user-attachments/assets/2bebe7e1-1523-48b5-87e6-5ab316673aa2" />

y instalamos lo necesario para Azure.

<img width="597" height="59" alt="image" src="https://github.com/user-attachments/assets/6a85f4c9-f56d-4a96-bc78-cedf5da3975a" />

Una vez conectado Ansible, podemos probar la conexion con un .yaml.

## - test_azure.yaml

<img width="597" height="478" alt="image" src="https://github.com/user-attachments/assets/69c41ec0-4a53-4c49-9113-35fe5aa625e2" />


Este comando nos mostrara si existe conexion.

## Conexion a traves del archivo hosts.ini para conexion a la maquina virtual

Una vez que ya esta listo Ansible, debemos conectarlo a la propia maquina virtual que queremos usar.

<img width="600" height="35" alt="configuracion hosts ini" src="https://github.com/user-attachments/assets/ba2a9fa9-646b-4c66-80fa-c062c2856b99" />

Debido a la configuracion de la VPN, se debe poner la ip de la VPN donde la ip publica, para asi conectarnos solo por VPN.


## Mejorar seguridad de Ansible

Para mas seguridad, Ansible usa un valor altamente confidencial llamado secreto, el cual este una vez generado no se puede eliminar y si queremos cambiarlo debemos hacerlo desde el CLI o el portal de Azure. Para mejorar esto, he querido añadir una rotacion de secretos de ansible a partir de mi keyvault, toda esta informacion estara en una carpeta dentro de este mismo apartado de Ansible.

[Aqui esta dicho contenido/*Here is this content*](./Ansible-Secret-Automation/)
