resource "azurerm_network_interface_security_group_association" "nic_nsg" {
  for_each = var.net-sec-group
  network_interface_id      = data.azurerm_network_interface.network-interface[each.key].id
  network_security_group_id = azurerm_network_security_group.netsecgr[each.key].id

}
resource "azurerm_network_security_group" "netsecgr" {
    for_each = var.net-sec-group
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgn

  security_rule {
    name                       = each.value.sec_name
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
