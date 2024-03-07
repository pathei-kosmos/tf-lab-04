resource "azurerm_network_interface" "nic0" {
  name                = "${var.prefix}-nic0"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                          = "${var.prefix}-ipconfig-0"
    private_ip_address_allocation = "Static"
    private_ip_address_version    = "IPv4"
    private_ip_address            = "10.40.0.4"
    subnet_id                     = azurerm_subnet.subnet1.id
  }

  tags = {
    deployment = "Terraform"
  }
}

resource "azurerm_network_interface" "nic1" {
  name                = "${var.prefix}-nic1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                          = "${var.prefix}-ipconfig-1"
    private_ip_address_allocation = "Static"
    private_ip_address_version    = "IPv4"
    private_ip_address            = "10.40.1.4"
    subnet_id                     = azurerm_subnet.subnet2.id
  }

  tags = {
    deployment = "Terraform"
  }
}