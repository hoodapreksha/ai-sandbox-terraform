resource "azurerm_resource_group" "sandbox" {
  name     = "rg-ai-sandbox-sandbox"
  location = var.location

  tags = {
    environment = var.environment
    project     = var.project
    owner       = var.owner
    managed_by  = "terraform"
  }
}
resource "azurerm_storage_account" "tfstate" {
  name                     = "staisandboxtfstate"
  resource_group_name      = azurerm_resource_group.sandbox.name
  location                 = azurerm_resource_group.sandbox.location
  account_tier             = "Standard"
  account_replication_type = "LRS"


  tags = {
    environment = var.environment
    project     = var.project
    owner       = var.owner
    managed_by  = "terraform"
  }
}
resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}
