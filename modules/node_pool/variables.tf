variable "worker_node_pool_name" {
  type = string
  description = "Worker node pool name"
}

variable "worker_node_pool_vm_size" {
  type = string
  description = "Worker node pool vm size"  
}

variable "worker_node_count" {
  type = number
  description = "Worker node pool count number"  
}

variable "aks_cluster_id" {
  type = string
  description = "AKS cluster ID"   
}

variable "tags" {
    type = map(any)
    description = "tags to be used" 
}