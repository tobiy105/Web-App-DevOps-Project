# modules/networking-module/variables.tf

variable "resource_group_name" {
  description = "Name of the Azure Resource Group for networking resources"
  type        = string
  default     = "aks-resource-group"  # Modify the default value as needed
}

variable "location" {
  description = "Azure region where networking resources will be deployed"
  type        = string
  default     = "UK South"  # Modify the default region as needed
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network (VNet)"
  type        = list(string)
  default     = ["10.0.0.0/16"]  # Modify the default address space as needed
}
