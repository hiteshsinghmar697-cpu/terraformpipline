data "azurerm_subnet" "hitesh" {
  for_each = var.nics
  name = each.value.subnet_name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

data "azurerm_public_ip" "hitesh" {
  for_each = var.nics
  name = each.value.public_ip
  resource_group_name = each.value.resource_group_name
}