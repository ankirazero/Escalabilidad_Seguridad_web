terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "WebApp-Terraform"     
    storage_account_name = "storageaccountwebterra"
    container_name       = "save-tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features{}
}