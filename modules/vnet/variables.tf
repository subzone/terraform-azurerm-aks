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

variable "resource_group_name" {
  type = string
  description = "rg name"
}

variable "resource_group_location" {
  type = string
  description = "location to deploy resources"
}