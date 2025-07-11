#network security rules
resource "azurerm_network_security_rule" "nsr1" {
  name = "netork_security_Rule_01"
  priority = 100
  direction = "Inbound"
  access = "Allow"
  protocol = "Tcp"
  source_port_range = "22"
  destination_port_range = "22"
  source_address_prefix = "*"
  destination_address_prefix = "*"
  resource_group_name = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}