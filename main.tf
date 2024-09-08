
# Create a resource group
resource "azurerm_resource_group" "rg-apps" {
  location = var.resource_group_location
  name     = var.resource_group_apps_name
  tags     = var.tags
}

#Create resource group for virtual network
resource "azurerm_resource_group" "rg-vnet" {
  name     = var.resource_group_networks_name
  location = var.resource_group_location
  tags     = var.tags
}

# Create azure virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_space
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg-vnet.name
}

# Create network security group
resource "azurerm_network_security_group" "nsg" {
  name                = var.network_security_group_name
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg-vnet.name
}

resource "azurerm_network_security_rule" "nsg_rule" {
  name                        = "Allow_HTTP"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg-vnet.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}

# Create subnet

resource "azurerm_subnet" "subnet" {
  name                 = var.virtual_network_subnet_name
  resource_group_name  = azurerm_resource_group.rg-vnet.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_subnet_network_security_group_association" "nsg-association" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}