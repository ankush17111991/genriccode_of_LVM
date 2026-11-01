terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name = "value"
  #   storage_account_name = "value"
  #   container_name = "value"
  #   key = "value"
    
  # }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}