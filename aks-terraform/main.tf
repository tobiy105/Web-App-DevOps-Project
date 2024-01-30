# main.tf

# Configure the Azure provider
provider "azurerm" {
  features {}
  client_id     = var.client_id
  client_secret = var.client_secret
  subscription_id = "0ebbba45-beb2-4c3a-ae53-2fbb98fc09cc"
  tenant_id = "47d4542c-f112-47f4-92c7-a838d8a5e8ef"
}

# Include networking module
module "networking" {
  source          = "./modules/networking-module"
  resource_group_name = "net-dev-aks-rg" 
  location        = "UK South"  
  vnet_address_space = ["10.0.0.0/16"]
  # Include other input variables as needed by the networking module
}

# Include cluster module
module "aks_cluster" {
  source             = "./modules/aks-cluster-module"
  
  # Input variables for the AKS cluster module
  aks_cluster_name   = "new-my-aks-cluster"
  cluster_location   = "UK South"  
  dns_prefix         = "myaks-project"
  kubernetes_version = "1.26.6"
  service_principal_client_id = var.service_principal_client_id
  service_principal_secret    = var.service_principal_secret
  
  # Input variables referencing outputs from the networking module
  resource_group_name         = module.networking.networking_resource_group_name
  vnet_id                     = module.networking.vnet_id
  control_plane_subnet_id     = module.networking.control_plane_subnet_id
  worker_node_subnet_id       = module.networking.worker_node_subnet_id
  aks_nsg_id                  = module.networking.aks_nsg_id
  # Include other input variables as needed by the cluster module
}

# Output variables for reference or further use
output "aks_cluster_name" {
  description = "Name of the provisioned AKS cluster"
  value       = module.aks_cluster.aks_cluster_name
}

output "aks_kubeconfig" {
  description = "Kubeconfig for the provisioned AKS cluster"
  value       = module.aks_cluster.aks_kubeconfig
  sensitive = true
}
