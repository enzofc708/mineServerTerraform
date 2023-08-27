terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  cloud {
    organization = "enzofc"

    workspaces {
      name = "CLI"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = "minecraftRG"
  location = "Brazil South"
}