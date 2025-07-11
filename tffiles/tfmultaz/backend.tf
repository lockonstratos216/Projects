#backend config to store the tfstate key
terraform {
  backend "azurerm" {
    storage_account_name = "" 
    container_name = "" 
    key = "terraform.tfstate"
    access_key = "" 
  }
}