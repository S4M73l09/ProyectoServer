//Provider Azure
provider "azurerm" {
  subscription_id = "2a23dc3f-267e-4cd1-a12a-695e2623f1f7" 
  features {}
}
//Creacion del grupo de recursos
resource "azurerm_resource_group" "UbuntuReal" {
  name     = "Ubuntu-resources"
  location = "North Europe"
}

//Creacion de la Ippublica
resource "azurerm_public_ip" "UbuntuIPREAL" {
  name = "UbuntuIPREAL_public_ip"
  location = azurerm_resource_group.UbuntuReal.location
  resource_group_name = azurerm_resource_group.UbuntuReal.name
  allocation_method = "Static"
}
//Creacion de la red virtual
resource "azurerm_virtual_network" "UbuntuREAL" {
  name                = "UbunREAL-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.UbuntuReal.location
  resource_group_name = azurerm_resource_group.UbuntuReal.name
}
//Creacion de la subnet
resource "azurerm_subnet" "UbuntuREALS" {
  name                 = "UbuntuREALS-subnet"
  resource_group_name  = azurerm_resource_group.UbuntuReal.name
  virtual_network_name = azurerm_virtual_network.UbuntuREAL.name
  address_prefixes     = ["10.0.1.0/24"]
}
//Creacion de la Ippublica
resource "azurerm_public_ip" "UbuntuIPREAL_" {
  name = "UbuntuIPREAL_public_ip"
  location = azurerm_resource_group.UbuntuReal.location
  resource_group_name = azurerm_resource_group.UbuntuReal.name
  allocation_method = "Static"
}
//Creacion y configuracion de la interfaz de red
resource "azurerm_network_interface" "UbuntInter" {
  name                = "UbuntInter-nic"
  location            = azurerm_resource_group.UbuntuReal.location
  resource_group_name = azurerm_resource_group.UbuntuReal.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.UbuntuREALS.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.UbuntuIPREAL_.id
  }
}
//Creacion de la maquina virtual
resource "azurerm_linux_virtual_machine" "UbuntuVM" {
  name                = "UbuntuVM-vm"
  resource_group_name = azurerm_resource_group.UbuntuReal.name
  location            = azurerm_resource_group.UbuntuReal.location
  size                = "Standard_A2_v2" # Tamaño con 2 núcleos y 4 GB de RAM
  admin_username      = "Samuel"
  admin_password      = "Re666xX7" # Cambiar por una contraseña segura
//Aqui especificamos la clave publica SSH
admin_ssh_key {
  username = "Samuel"
  public_key = file("${path.module}/id_rsa.pub")
}
  network_interface_ids = [
    azurerm_network_interface.UbuntInter.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }



  disable_password_authentication = true # Permitir autenticación por contraseña
}
