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
  depends_on = [ module.resource_group ]
}

module "aks" {
  source = "./modules/aks"
  aks_name = var.aks_name
  node_pool_vm_size = var.node_pool_vm_size
  resource_group_location = var.resource_group_location
  resource_group_name = var.resource_group_name
  aks_node_pool_name = var.aks_node_pool_name
  aks_dns_prefix = var.aks_dns_prefix
  node_count = var.node_count
  tags = var.tags
  depends_on = [ module.resource_group, module.vnet ]
}