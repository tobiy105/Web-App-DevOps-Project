# variables.tf

variable "client_id" {
  description = "Access key for the provider"
  type        = string
  sensitive =  true
}

variable "client_secret" {
  description = "Secret key for the provider"
  type        = string
  sensitive = true
}


variable "service_principal_client_id" {
  description = "Client ID for the service principal associated with the cluster"
  type        = string
}

# Input variable for the Service Principal Secret
variable "service_principal_secret" {
  description = "Client Secret for the service principal"
  type        = string
}