//Provider Azure
provider "azurerm" {
  subscription_id = "subscription_id_value" 
  features {}
}


#Por si usas un archivo variable por ejemplo para mas seguridad/In case you use a variable file for example for more security
#provider "azurerm" {
#  subscription_id = var.subscription_id 
#  features {}
#}

//Creacion del grupo de recursos/Creation the group resource
resource "azurerm_resource_group" "Example_name_resource_group" {
  name     = "Example-Name-resource"
  location = "Example-Name-Region"
}

//Creacion de la Ippublica/Creation the public_ip
resource "azurerm_public_ip" "Example_public_ip" {
  name = "Example_public_ip"
  location = azurerm_resource_group.Example_name_resource_group.location
  resource_group_name = azurerm_resource_group.Example_name_resource_group.name
  allocation_method = "Static"
}
//Creacion de la red virtual/Creation of the virtual Network
resource "azurerm_virtual_network" "Example_virtual_network" {
  name                = "Example_virtual_network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.Example_name_resource_group.location
  resource_group_name = azurerm_resource_group.Example_name_resource_group.name
}
//Creacion de la subnet/Creation the subnet
resource "azurerm_subnet" "Example_name_subnet" {
  name                 = "Example_name_subnet"
  resource_group_name  = azurerm_resource_group.Example_name_resource_group.name
  virtual_network_name = azurerm_virtual_network.Example_virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}
//Creacion y configuracion de la interfaz de red/Creation and configuration the interface
resource "azurerm_network_interface" "Example_name_interface" {
  name                = "Example_name_interface"
  location            = azurerm_resource_group.Example_name_resource_group.location
  resource_group_name = azurerm_resource_group.Example_name_resource_group.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.Example_name_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.Example_public_ip.id
  }
}
//Creacion de la maquina virtual/Creation the virtual machine
resource "azurerm_linux_virtual_machine" "Example_Ubuntu" {
  name                = "UbuntuVM-vm"
  resource_group_name = azurerm_resource_group.Example_name_resource_group.name
  location            = azurerm_resource_group.Example_name_resource_group.location
  size                = "Standard_A2_v2" # Tamaño con 2 núcleos y 4 GB de RAM/Rigged with 2 cores and 4 GB of RAM
  admin_username      = "Admin User"
  admin_password      = "Admin password" # Cambiar por una contraseña segura/Change for strong password
//Aqui especificamos la clave publica SSH/Here the public SSH key
admin_ssh_key {
  username = "Your name"
  public_key = file("Path of public key")
}
  network_interface_ids = [
    azurerm_network_interface.Example_name_interface.id,
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
