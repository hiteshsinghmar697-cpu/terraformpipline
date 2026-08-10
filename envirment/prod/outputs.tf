output "resource_groups" {
  value = module.rg.resource_groups
}

output "virtual_networks" {
  value = module.vnet.virtual_networks
}

output "subnets" {
  value = module.subnet.subnets
}

output "public_ips" {
  value = module.pip.public_ips
}

output "network_interfaces" {
  value = module.nic.network_interfaces
}

output "virtual_machines" {
  value     = module.vm.virtual_machines
  sensitive = true
}
