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
