terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source = "./modules/network"

  resource_group_name = var.resource_group_name
  location            = var.azure_region
  project_name        = var.project_name
  address_space       = var.address_space
  subnet_prefix       = var.subnet_prefix
  http_port           = var.http_port
}

module "linux_vm" {
  source = "./modules/linux_vm"

  resource_group_name  = module.network.resource_group_name
  location             = module.network.location
  project_name         = var.project_name
  vm_size              = var.tamano_vm
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  network_interface_id = module.network.network_interface_id
}
