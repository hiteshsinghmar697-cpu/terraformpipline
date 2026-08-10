variable "nics" {}


resource "azurerm_network_interface" "hitesh" {
  for_each = var.nics
  name = each.value.name
  location = each.value.location
resource_group_name = each.value.resource_group_name
ip_configuration {
name = "internal"
subnet_id = data.azurerm_subnet.hitesh[each.key].id
public_ip_address_id = data.azurerm_public_ip.hitesh[each.key].id
private_ip_address_allocation = "Dynamic"
}
}