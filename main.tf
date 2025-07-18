provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "Assignterra" {
    name     = "Assignterra"
    location = "East US"
}
 
resource "azurerm_storage_account" "storage" {
  name                     = "msjsa18"
  resource_group_name      = Assignterra.Assignterra.name
  location                 = Assignterra.Assignterra.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
 
resource "azurerm_storage_container" "blob_container" {
  name                  = "msjcontainer"
  storage_account_name  = msj18.storage.name
  container_access_type = "public"
}