#network configurations
resource "azurerm_virtual_network" "vn1" {
  name                = "network01"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}




