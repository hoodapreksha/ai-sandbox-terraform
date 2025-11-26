output "vnet_id" {
  description = "The ID of the virtual network"
  value = azure_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the virtual network"
  value = azure_virtual_network.vnet.name
  
}

output "subnet_ids" {
  description = "Map the subnet names to their IDs"
  value = {
    for name, subnet in azurerm_subnet.subnet :
    name => subnet.id
  }
}

output "subnet_address_prefixes" {
  description = "Map of subnet names to their address prefixes"
  value = {
    for name, subnet in azure_subnet.subnet :
    name => subnet.address_prefixes
  }
}