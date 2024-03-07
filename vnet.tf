resource "azurerm_resource_group" "rg1" {
  name     = "${var.prefix}-rg1"
  location = var.location

  tags = {
    deployment = "Terraform"
  }
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.prefix}-vnet1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.40.0.0/20"]

  tags = {
    deployment = "Terraform"
  }
}

resource "azurerm_subnet" "subnet1" {
  name                 = "Subnet1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.40.0.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "Subnet2"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.40.1.0/24"]
}