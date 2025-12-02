terraform {
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-github-for-cloud-day3"
  location = "eastus"
}
