terraform {
  required_version = ">= 1.8.0"

  required_providers {
    azurerm = {
        source = "hashicorm/azurerm"
        version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}