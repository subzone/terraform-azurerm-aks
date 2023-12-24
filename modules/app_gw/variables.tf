variable "public_ip_address_id" {
  type = string
  description = "pip address id"  
}

variable "app_gw_name" {
  type = string
  description = "application gateway name"
}

variable "resource_group_name" {
  type = string
  description = "rg name"
}

variable "resource_group_location" {
  type = string
  description = "location to deploy resources"
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

variable "app_gw_subnet_id" {
  type = string
  description = "app gw subnet id"
}