# En este apartado, quiero mostrar el uso de unos scrips y archivos .yml para crear una rotacion en tiempo real del secreto de Ansible/In this section, I want to show the use of some scripts and .yml files to create a real-time rotation of the Ansible secret*

1. purgar-eliminacion-**purge-elimination**
2. rotacion-secreto-**rotate-secret**
3. script-principal-**script-main**

--------------------------------------------

He separado cada script en tres diferentes carpetas para asi poder explicar de mejor manera el uso de estas.

**Im separeted every script in three folders for more visibility**

## Ansible.cfg

- Este archivo se encarga de precisamente hacer que ansible funcione usando las rutas donde esta su collections, es necesario para poder utilizar Ansible de manera eficiente.
- **This file is precisely responsible for making Ansible work using the paths where your collections are, it is necessary to be able to use Ansible efficiently.**

## SP-ROTATOR.env

- Este archivo se encarga de dar las variables necesarias a la SP-rotadora que se encarga de hacer el traspaso de secretos a Ansible, a la vez que nos sirve para mejorar de mejor manera la segurida ya que nos permite no poner variables importantes en nuestros Scripts, por temas de seguridad aqui en Git Hub estan censauradas las variables utilizadas y se pusieron otras aleatorias, esto es solo un ejemplo de dicho archivo.

- **This file is responsible for giving the necessary variables to the SP-rotator that is responsible for transferring secrets to Ansible, while at the same time it helps us to better improve security since it allows us not to put important variables in our Scripts. For security reasons, here in Git Hub the variables used are censored and other random ones were placed this is just an example of such a file.**

  -----------------------------------------------------------------------------
