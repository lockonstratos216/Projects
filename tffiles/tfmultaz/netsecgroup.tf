#network security group
resource "azurerm_network_security_group" "nsg1" {
  name = ""
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}