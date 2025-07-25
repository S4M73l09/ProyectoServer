#!/usr/bin/env bash
set -euo pipefail

ENV_FILE="$HOME/SP-ROTATOR.env" #Poner archivo de variables de Azure para seguir el script - Put the Azure variables file to follow the script

# Verificar existencia del archivo de entorno - Verify existence of the environment file
if [[ ! -f "$ENV_FILE" ]]; then
  echo "❌ Archivo de entorno no encontrado: $ENV_FILE"
  exit 1
fi

# Cargar variables de entorno - Load environment variables
source "$ENV_FILE"

# Verificar que las variables requeridas estén definidas - Verify that the required variables are defined
: "${AZURE_CLIENT_ID:?Variable AZURE_CLIENT_ID no definida}"
: "${AZURE_CLIENT_SECRET:?Variable AZURE_CLIENT_SECRET no definida}"
: "${AZURE_TENANT_ID:?Variable AZURE_TENANT_ID no definida}"
: "${AZURE_SUBSCRIPTION_ID:?Variable AZURE_SUBSCRIPTION_ID no definida}"

# Autenticar en Azure - Authenticate in Azure
echo "🔐 Autenticando en Azure como Service Principal rotator..."
if ! az login --service-principal \
  --username "$AZURE_CLIENT_ID" \
  --password "$AZURE_CLIENT_SECRET" \
  --tenant "$AZURE_TENANT_ID" > /dev/null 2>&1; then
  echo "❌ Error al autenticar en Azure"
  exit 1
fi
echo "✅ Autenticación completada"

# Ejecutar playbook de rotación - Run rotation playbook
echo "🔄 Ejecutando playbook de rotación..."
if ! ansible-playbook rotate-ansible-secret2.yml \
  -e "ansible_app_id=$AZURE_CLIENT_ID" \
  -e "keyvault_name=Nombredelvault" \
  -e "kv_secret_name=AnsibleClientSecret" \
  -e "ansible_python_interpreter=/usr/bin/python3" \
  -v; then
  echo "❌ Error al ejecutar el playbook de rotación"
  exit 1
fi

# Ejecutar playbook de limpieza - Run cleaning playbook
echo "🧹 Ejecutando playbook de limpieza de versiones antiguas..."
if ! ansible-playbook purgar-borrado.yml \
  -e "keyvault_name=Nombredelvault" \
  -e "kv_secret_name=AnsibleClientSecret" \
  -e "ansible_python_interpreter=/usr/bin/python3" \
  -v; then
  echo "❌ Error al ejecutar el playbook de limpieza"
  exit 1
fi

echo "🎉 Todo completado correctamente"
