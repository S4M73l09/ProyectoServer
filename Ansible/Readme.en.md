<p align="center">
  <a href="README.md">
    <img src="https://img.shields.io/badge/⏻-Cambiar%20a%20Español-green?style=for-the-badge">
  </a>
</p>

 # Ansible🅰

 #### Ansible is a powerfull tool in the shield DevOps since it allows us to automate the deployment of infraestructure of both machines in general and deployment of services of a particular machine. In this project, Ansible is used for a particular machine which will help us save a lot of work once we have it configured.

 ## Creation of principal service

 In order to better use Ansible, it is necessary to create a main Service as we did when creating one for github Actions, so it is not complicated, we just create it and add said credentials that it returns to us.

<img width="603" height="88" alt="image" src="https://github.com/user-attachments/assets/2cb40f46-190d-4035-9fbc-126d0fe4446a" />

<img width="599" height="86" alt="image" src="https://github.com/user-attachments/assets/cb7a56e4-6090-4a20-8025-20ef28c95571" />

In the .azure path, if it is not there we create it without problems

<img width="601" height="343" alt="image" src="https://github.com/user-attachments/assets/2bebe7e1-1523-48b5-87e6-5ab316673aa2" />

and we install what is necessary for Azure.

<img width="597" height="59" alt="image" src="https://github.com/user-attachments/assets/6a85f4c9-f56d-4a96-bc78-cedf5da3975a" />

Once Ansible is connected, we can test the connection with a .yaml.

## - test_azure.yaml

<img width="597" height="478" alt="image" src="https://github.com/user-attachments/assets/69c41ec0-4a53-4c49-9113-35fe5aa625e2" />

*This command will show us if there is a connection*

## Connection through the hosts.ini file for connection to the virtual machine

Once Ansible is ready, we must connect it to the virtual machine we want to use.

<img width="600" height="35" alt="configuracion hosts ini" src="https://github.com/user-attachments/assets/ba2a9fa9-646b-4c66-80fa-c062c2856b99" />

Due to the VPN configuration, you must put the VPN IP where the IP publishes, in order to connect only via VPN

## Improve Ansible security

For more security, Ansible uses a highly confidential value called secret, which once generated cannot be deleted and if we want to change it we must do so from the CLI or the Azure portal. To improve this, I wanted to add a rotation of Ansible secrets from my keyvault, all this information will be in a folder within this same section of Ansible.

[Here is this content](./Ansible-Secret-Automation/)
