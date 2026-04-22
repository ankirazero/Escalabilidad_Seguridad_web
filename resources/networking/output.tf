output "vnet_id" {
  value = azurerm_virtual_network.VNet_WebApplication_Terraform.name
}

output "subnet_sa_id" {
  value = azurerm_subnet.SubNet_sa.id
}

output "subnet_back_id" {
  value = azurerm_subnet.SubNet_back.id
}

output "subnet_front_id" {
  value = azurerm_subnet.SubNet_front.id
}