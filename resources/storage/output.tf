
output "storage_account_name" {
  value = azurerm_storage_account.storageaccountweb.name
}

output "storage_account_id" {
  value = azurerm_storage_account.storageaccountweb.id
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.storageaccountweb.primary_blob_endpoint
}