#network interface
resource "azurerm_network_interface" "nic1" {
  name                = "netinterface01"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  #ip configurations
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sbn1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip1.id
  }
}