#Subnet info
resource "azurerm_subnet" "sbn1" {
  name                 = ""
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vn1.name
  address_prefixes     = ["10.0.2.0/24"]
}
