data "azurerm_network_interface" "network-interface" {
    for_each = var.net-sec-group
    name = each.value.nsg_name
    resource_group_name = each.value.rgn
}