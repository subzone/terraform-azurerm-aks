variable "resource_group_name" {
    type = string
    description = "Resource group name"  
}

variable "resource_group_location" {
    type = string
    description = "Resource group location"  
}

variable "tags" {
    type = map(any)
    description = "tags to be used" 
}

variable "cidr_space" {
    type = list(any)
    description = "cidr for vnet"
}

variable "subnet_address_prefix" {
  type = string
  description = "adress space for subnet"
}

variable "dns_servers" {
  type = list(any)
  description = "dns servers to be used in subnet"
}

variable "vnet_name" {
  type = string
  description = "new vnet name"
}

variable "subnet_name" {
  type = string
  description = "new subnet name" 
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

variable "aks_name" {
  type = string
  description = "AKS name"
}

variable "app_gw_name" {
  type = string
  description = "application gateway name"
}

variable "app_gw_sku" {
  type = string
  description = "app gw sku"
}

variable "app_gw_tier" {
  type = string
  description = "app gw tier"
}

variable "app_gw_capacity" {
  type = string
  description = "app gw capacity"
}

variable "app_gw_ip_conf_name" {
  type = string
  description = "app gw ip configuration name"
}