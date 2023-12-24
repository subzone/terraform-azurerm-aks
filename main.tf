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

module "public_ip" {
  source = "./modules/public_ip"
  pip_allocation_method = var.pip_allocation_method
  public_ip_name = var.public_ip_name
  resource_group_location = var.resource_group_location
  resource_group_name = var.resource_group_name
  tags = var.tags
  depends_on = [ module.resource_group ]
}

module "app_gateway" {
  source = "./modules/app_gw"
  app_gw_tier = var.app_gw_tier
  app_gw_sku = var.app_gw_sku
  app_gw_subnet_id = module.vnet.subnet_id
  app_gw_capacity = var.app_gw_capacity
  app_gw_name = var.app_gw_name
  resource_group_location = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  public_ip_address_id = module.public_ip.public_ip_address_id
  app_gw_ip_conf_name = var.app_gw_ip_conf_name
}