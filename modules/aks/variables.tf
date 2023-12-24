variable "aks_name" {
  type = string
  description = "AKS name"
}

variable "resource_group_name" {
  type = string
  description = "rg name"
}

variable "resource_group_location" {
  type = string
  description = "location to deploy resources"
}

variable "aks_dns_prefix" {
  type = string
  description = "AKS dns prefix" 
}

variable "aks_node_pool_name" {
  type = string
  description = "node pool name"
}

variable "node_count" {
    type = number
    description = "number of nodes"  
}

variable "node_pool_vm_size" {
    type = string
    description = "VM size for nodes"
}

variable "tags" {
    type = map(any)
    description = "tags to be used" 
}