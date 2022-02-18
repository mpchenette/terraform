# variable "az" {
#   type = map
# }

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

  subscription_id = var.subscriptionId
  client_id       = var.clientId
  client_secret   = var.clientSecret
  tenant_id       = var.tenantId
}

resource "azurerm_resource_group" "rg" {
  name     = "terraform-demo"
  location = "southcentralus"
}
