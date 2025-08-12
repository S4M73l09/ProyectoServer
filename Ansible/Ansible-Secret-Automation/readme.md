<p align="center">
  <a href="readme.en.md">
    <img src="https://img.shields.io/badge/⏻-Switch%20to%20English-red?style=for-the-badge">
  </a>
</p>



# En este apartado, quiero mostrar el uso de unos scrips y archivos .yml para crear una rotacion en tiempo real del secreto de Ansible
1. purgar-eliminacion
2. rotacion-secreto
3. script-principal

--------------------------------------------

He separado cada script en tres diferentes carpetas para asi poder explicar de mejor manera el uso de estas.

## Ansible.cfg

- Este archivo se encarga de precisamente hacer que ansible funcione usando las rutas donde esta su collections, es necesario para poder utilizar Ansible de manera eficiente.


## SP-ROTATOR.env

- Este archivo se encarga de dar las variables necesarias a la SP-rotadora que se encarga de hacer el traspaso de secretos a Ansible, a la vez que nos sirve para mejorar de mejor manera la segurida ya que nos permite no poner variables importantes en nuestros Scripts, por temas de seguridad aqui en Git Hub estan censauradas las variables utilizadas y se pusieron otras aleatorias, esto es solo un ejemplo de dicho archivo.

-------------------------------------------------------------------------------




  


### **¿Cómo se verá?**
¡Así! 👇


```mermaid
flowchart TD
    %% Estilos de nodos
    classDef env fill:#e0f7fa,stroke:#0097a7,stroke-width:2px,color:#006064;
    classDef script fill:#fff9c4,stroke:#fbc02d,stroke-width:2px,color:#f57c00;
    classDef playbook1 fill:#e1bee7,stroke:#8e24aa,stroke-width:2px,color:#4a148c;
    classDef playbook2 fill:#ffe0b2,stroke:#f57c00,stroke-width:2px,color:#bf360c;

    %% Nodos
    A["<b>Archivo .env<br/>(SP)</b>"]:::env
    B["<b>Script Bash</b><br/>(rotate-and-run2.sh)"]:::script
    C1["<b>Playbook 1</b><br/>Rotar secreto<br/>(rotate-ansible-secret2.yml)"]:::playbook1
    C2["<b>Playbook 2</b><br/>Limpiar/purgar<br/>versiones antiguas<br/>(purgar-borrado.yml)"]:::playbook2

    %% Flujo
    A --> B
    B --> C1
    B --> C2



