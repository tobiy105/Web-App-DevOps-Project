# modules/networking-module/outputs.tf

# Output variable for the VNet ID
output "vnet_id" {
  description = "ID of the Virtual Network (VNet)"
  value       = azurerm_virtual_network.aks_vnet.id
}

# Output variable for the control plane subnet ID
output "control_plane_subnet_id" {
  description = "ID of the control plane subnet within the VNet"
  value       = azurerm_subnet.control_plane_subnet.id
}

# Output variable for the worker node subnet ID
output "worker_node_subnet_id" {
  description = "ID of the worker node subnet within the VNet"
  value       = azurerm_subnet.worker_node_subnet.id
}

# Output variable for the networking resource group name
output "networking_resource_group_name" {
  description = "Name of the Azure Resource Group for networking resources"
  value       = azurerm_resource_group.aks_rg.name
}

# Output variable for the NSG ID
output "aks_nsg_id" {
  description = "ID of the Network Security Group (NSG)"
  value       = azurerm_network_security_group.aks_nsg.id
}
