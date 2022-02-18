variable "az" {
  type = map
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.az[subscriptionId]
  client_id       = var.az[clientId]
  client_secret   = var.az[clientSecret]
  tenant_id       = var.az[tenantId]
}

resource "azurerm_resource_group" "rg" {
  name     = "terraform-demo"
  location = "southcentralus"
}
