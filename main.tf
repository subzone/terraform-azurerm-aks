module "resource_group" {
  source = "./modules/resource_group"
  resource_group_location = var.resource_group_location
  resource_group_name = var.resource_group_name
}

module "vnet" {
  source = "./modules/vnet"
  tags = var.tags
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
  resource_group_location = var.resource_group_location
  resource_group_name = var.resource_group_name
  cidr_space = var.cidr_space
  subnet_address_prefix = var.subnet_address_prefix
  dns_servers = var.dns_servers
}