variable "pip_allocation_method" {
    type = string
    default = "Static"
    description = "Public IP type static/dynamic"
}

variable "public_ip_name" {
  type = string
  description = "Name for public IP"
}

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
  description = "map of tags for pip"
}