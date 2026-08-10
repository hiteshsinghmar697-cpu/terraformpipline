data "azurerm_network_interface" "hitesh" {
    for_each = var.vms
  name                = each.value.nic
  resource_group_name = each.value.resource_group_name
}