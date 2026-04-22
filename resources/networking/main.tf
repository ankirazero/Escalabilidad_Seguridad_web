resource "azurerm_resource_group" "Web-Application_terraform" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_virtual_network" "VNet_WebApplication_Terraform" {
  name                = var.vnet_name
  location            = azurerm_resource_group.Web-Application_terraform.location
  resource_group_name = azurerm_resource_group.Web-Application_terraform.name
  address_space       = var.vnet_range
}

resource "azurerm_subnet" "SubNet_sa" {
  name                 = var.subnet_sa 
  resource_group_name  = azurerm_resource_group.Web-Application_terraform.name
  virtual_network_name = azurerm_virtual_network.VNet_WebApplication_Terraform.name
  address_prefixes     = ["10.0.0.0/24"] 
  service_endpoints = ["Microsoft.Storage"]
}

resource "azurerm_subnet" "SubNet_back" {
  name                 = var.subnet_back
  resource_group_name  = azurerm_resource_group.Web-Application_terraform.name
  virtual_network_name = azurerm_virtual_network.VNet_WebApplication_Terraform.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "SubNet_front" {
  name                 = var.subnet_front
  resource_group_name  = azurerm_resource_group.Web-Application_terraform.name
  virtual_network_name = azurerm_virtual_network.VNet_WebApplication_Terraform.name
  address_prefixes     = ["10.0.2.0/24"]
}