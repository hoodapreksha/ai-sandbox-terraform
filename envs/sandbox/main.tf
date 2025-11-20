terraform {
  required_version = ">= 1.8.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "054ba805-4e5d-4cad-a706-02c6eb02c567"
}

resource "azurerm_resource_group" "sandbox" {
  name     = "rg-ai-sandbox-sandbox"
  location = "canadacentral"

  tags = {
    environment = "sandbox"
    project     = "ai-sandbox"
    owner       = "preksha"
    managed_by  = "terraform"
  }
}