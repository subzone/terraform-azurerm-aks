resource "azurerm_network_security_group" "nsg" {
  name                = var.vnet_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  address_space       = var.cidr_space
  dns_servers         = var.dns_servers

  subnet {
    name           = var.subnet_name
    address_prefix = var.subnet_address_prefix
    security_group = azurerm_network_security_group.nsg.id
  }


  tags = var.tags
}