#virtual macine details
resource "azurerm_linux_virtual_machine" "VM1" {
  name                = "" 
  resource_group_name = azurerm_resource_group.rg1.name 
  location            = azurerm_resource_group.rg1.location
  size                = "Standard_F2" 
  admin_username      = "" 
  network_interface_ids = [
    azurerm_network_interface.nic1.id,
  ] 

  #ssh key config
  admin_ssh_key {
    username   = "" 
    public_key = file("")
  }
  
  #os disk info
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  #image details 
  source_image_reference {
    publisher = "Canonical" 
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}


