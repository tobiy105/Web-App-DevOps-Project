# modules/aks-cluster-module/outputs.tf

# Output variable to capture the name of the provisioned AKS cluster
output "aks_cluster_name" {
  description = "Name of the provisioned AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.name
}

# Output variables to retrieve information about the AKS cluster
output "aks_cluster_id" {
  description = "ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.id
}

# Output variable to capture the Kubernetes configuration file (kubeconfig) of the AKS cluster
output "aks_kubeconfig" {
  description = "Kubeconfig for the provisioned AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
}
