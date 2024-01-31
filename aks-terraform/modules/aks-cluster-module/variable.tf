# Input variable for the AKS cluster name
variable "aks_cluster_name" {
  description = "Name of the AKS cluster to create"
  type        = string
}

# Input variable for the cluster location (Azure region)
variable "cluster_location" {
  description = "Azure region where the AKS cluster will be deployed"
  type        = string
}

# Input variable for the DNS prefix of the cluster
variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

# Input variable for the Kubernetes version
variable "kubernetes_version" {
  description = "Kubernetes version for the AKS cluster"
  type        = string
}

# Input variable for the Service Principal Client ID
variable "service_principal_client_id" {
  description = "Client ID for the service principal associated with the cluster"
  type        = string
}

# Input variable for the Service Principal Secret
variable "service_principal_secret" {
  description = "Client Secret for the service principal"
  type        = string
}

# Input variables inherited from the networking module
# These variables are required to configure AKS networking
variable "resource_group_name" {
  description = "Name of the Azure Resource Group where networking resources were provisioned"
  type        = string
}

variable "vnet_id" {
  description = "ID of the Virtual Network (VNet) created by the networking module"
  type        = string
}

variable "control_plane_subnet_id" {
  description = "ID of the control plane subnet within the VNet"
  type        = string
}

variable "worker_node_subnet_id" {
  description = "ID of the worker node subnet within the VNet"
  type        = string
}

variable "aks_nsg_id" {
  description = "ID of the Network Security Group (NSG)"
  type        = string
}
