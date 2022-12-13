variable "location" {
  type    = string
  default = "japaneast"
}
variable "resource_group_name" {
  type    = string
  default = "tomono-terraform"
}

resource "azurerm_subnet" "res-1" {
  address_prefixes     = ["10.10.255.0/24"]
  name                 = "GatewaySubnet"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_subnet" "res-6" {
  address_prefixes     = ["10.10.240.0/24"]
  name                 = "snet-PRD-pf-ovpn-0001"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_subnet" "res-4" {
  address_prefixes     = ["10.10.2.0/24"]
  name                 = "snet-PRD-pf-customer-0003"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_virtual_network" "res-0" {
  address_space       = ["10.10.0.0/16"]
  location            = location
  name                = "vnet-PRD-pf"
  resource_group_name = resource_group_name
}
resource "azurerm_subnet" "res-7" {
  address_prefixes     = ["10.10.243.0/24"]
  name                 = "snet-PRD-pf-shared-0001"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_subnet" "res-3" {
  address_prefixes     = ["10.10.1.0/24"]
  name                 = "snet-PRD-pf-customer-0002"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_subnet" "res-2" {
  address_prefixes     = ["10.10.0.0/24"]
  name                 = "snet-PRD-pf-customer-0001"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_subnet" "res-5" {
  address_prefixes     = ["10.10.249.0/24"]
  name                 = "snet-PRD-pf-daianaShared-0001"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_subnet" "res-9" {
  address_prefixes     = ["10.10.248.0/24"]
  name                 = "snet_mariadb-PRD-pf-zbxShared-0001"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
resource "azurerm_subnet" "res-8" {
  address_prefixes     = ["10.10.254.0/25"]
  name                 = "snet-PRD-pf-zbxShared-0001"
  resource_group_name  = resource_group_name
  virtual_network_name = "vnet-PRD-pf"
  depends_on = [
    azurerm_virtual_network.res-0,
  ]
}
