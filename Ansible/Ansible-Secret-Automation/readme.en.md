<p align="center">
  <a href="readme.md">
    <img src="https://img.shields.io/badge/⏻-Cambiar%20a%20Español-green?style=for-the-badge">
  </a>
</p>

# In this section, I want to show the use of some scripts and .yml files to create a real-time rotation of the Ansible secret

1. purge-elimination
2. rotate-secret
3. script-main

Im separeted every script in three folders for more visibility

## Ansible.cfg

- This file is precisely responsible for making Ansible work using the paths where your collections are, it is necessary to be able to use Ansible efficiently.

## SP-ROTATOR.env

- This file is responsible for giving the necessary variables to the SP-rotator that is responsible for transferring secrets to Ansible, while at the same time it helps us to better improve security since it allows us not to put important variables in our Scripts. For security reasons, here in Git Hub the variables used are censored and other random ones were placed this is just an example of such a file.

-----------------------------------------------------------------------------

### How will it look?
so 👇

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
