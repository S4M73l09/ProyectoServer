<p align="center">
  <a href="Readme.md">
    <img src="https://img.shields.io/badge/⏻-Cambiar%20a%20Español-green?style=for-the-badge">
  </a>
</p>

# Docker🖥️

The Docker installation, configuration and use of the Docker-compose will be shown here.

When wanting to install Docker, we can do it from the virtual machine itself, but also using Ansible once we have everything ready. For example, we can create an .yml file that is responsible for installing our beloved Docker.

*CAUTION⚠️: Normally it will always ask for the sudo user's credentials to use these .yml, which will surely give an error. To do this we can add the user of use Ansible in the hosts.ini file to the **sudoers** file, in my case being the same Ubuntu user.*

<img width="593" height="795" alt="configuracion sudo user ansible" src="https://github.com/user-attachments/assets/bdedb6e3-e01e-48ad-9288-351afc4b7ece" />

## Install-Docker.yml

This .yml command will help us install docker on our virtual machine using the hosts.ini file as an intermediary.

<img width="979" height="807" alt="image" src="https://github.com/user-attachments/assets/76c7446e-46f9-41c6-ad15-604a2570332e" />


<img width="1804" height="139" alt="image" src="https://github.com/user-attachments/assets/5ee049fd-a638-4a1a-a832-a7dfc0bf1fa9" />

-------------------------------------------------

## Carpetas-Docker.yml

This .yml command will be in charge of creating the structure of folders, subfolders and copying the docker-compose plus the prometheus.yml since it is necessary.

<img width="858" height="1253" alt="image" src="https://github.com/user-attachments/assets/7486f65b-c38e-4b73-9853-a9b2cf736e78" />

This particular command, as I said, copies the docker-compose, prometheus.yml, which is necessary for prometheus, copies a variable file used for graphana credentials when creating the docker-compose, copies a custom.ini file to remove the allow_sign_up option for more security and also be in charge of executing the docker-compose directly.

-------------------------------------------------

## docker-compose.yml

And this is the docker-compose, because this command in general actually varies from what we want to install, it can be used as a template, it also shows how it works.

<img width="1098" height="1116" alt="image" src="https://github.com/user-attachments/assets/f252189a-b3d6-40df-a5ac-2d9dd7b66a49" />

<img width="375" height="658" alt="image" src="https://github.com/user-attachments/assets/1cd544f6-0df9-4d11-b46b-f8175beff19a" />

## prometheus.yml

This.yml is necessary for the docker-compose, a file stored in a folder within the Docker section for greater visibility of the other.yml

<img width="409" height="344" alt="image" src="https://github.com/user-attachments/assets/16fdcee6-87b3-4f92-941e-80f41ac9cd96" />

## Copy.yml

This .yml is an extra, and can be used to copy whatever we want using Ansible. To do this we always use **ansible-playbook -i hosts.ini Docker/<filenamecopy.yml>** Of course, for security reasons, I will always separate the Docker files in a folder.

<img width="1025" height="239" alt="image" src="https://github.com/user-attachments/assets/5febd7f9-dc38-4df2-a96a-9f2d11a18593" />

## custom.ini

This file has an option to disable allow_sign_up, since by default in graphana it sets it to true.

