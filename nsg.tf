resource "azurerm_network_security_group" "nsg01" {
  name                = "${var.prefix}-nsg01"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  security_rule {
    name                       = "AllowInboundSSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    deployment = "Terraform"
  }
}

resource "azurerm_subnet_network_security_group_association" "nsg01-subnet1" {
  subnet_id                 = azurerm_subnet.subnet1.id
  network_security_group_id = azurerm_network_security_group.nsg01.id
}

resource "azurerm_subnet_network_security_group_association" "nsg01-subnet2" {
  subnet_id                 = azurerm_subnet.subnet2.id
  network_security_group_id = azurerm_network_security_group.nsg01.id
}