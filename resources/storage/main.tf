resource "azurerm_storage_account" "storageaccountweb" {
  name                     = "storageaccountwebterra"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ var.rg_name ]

  network_rules {
    default_action             = "Deny"      
    bypass                     = ["AzureServices"] 
    virtual_network_subnet_ids = [var.subnet_id]
    ip_rules                   = ["186.84.24.6"]
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "save-tfstate"
  storage_account_name  = azurerm_storage_account.storageaccountweb.name
  container_access_type = "private" 
}