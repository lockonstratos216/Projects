#outputs for nic id and public ip, to connect the vm
output "nic_id" {
    description = "NIC ID"
    value = azurerm_network_interface.nic1.id
}
output "public_ip" {
    description = "Ip of your vm"
    value = azurerm_linux_virtual_machine.VM1.public_ip_address
}