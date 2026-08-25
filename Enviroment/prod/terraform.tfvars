resource_group = {
  rg01 = {
    name     = "Project007"
    location = "centralindia"
  }
}
virtual_network = {
  vnet01 = {
    name                = "Hub_vnet"
    resource_group_name = "Project007"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
  }
  vnet02 = {
    name                = "Spoke_vnet01"
    resource_group_name = "Project007"
    location            = "centralindia"
    address_space       = ["10.1.0.0/16"]
  }
  vnet03 = {
    name                = "Spoke_vnet02"
    resource_group_name = "Project007"
    location            = "westus2"
    address_space       = ["10.2.0.0/16"]
  }
  vnet04 = {
    name                = "Spoke_vnet03"
    resource_group_name = "Project007"
    location            = "centralindia"
    address_space       = ["10.3.0.0/16"]
  }
}
subnet = {
  subnet01 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "Project007"
    virtual_network_name = "Hub_vnet"
    address_prefixes     = ["10.0.1.0/26"]
  }
  subnet02 = {
    name                 = "ApplicationGatewaySubnet"
    resource_group_name  = "Project007"
    virtual_network_name = "Hub_vnet"
    address_prefixes     = ["10.0.2.0/27"]
  }
  subnet03 = {
    name                 = "AzureFirewallSubnet"
    resource_group_name  = "Project007"
    virtual_network_name = "Hub_vnet"
    address_prefixes     = ["10.0.3.0/26"]
  }
  subnet04 = {
    name                 = "Hub_subnet"
    resource_group_name  = "Project007"
    virtual_network_name = "Hub_vnet"
    address_prefixes     = ["10.0.4.0/24"]
  }
  subnet05 = {
    name                 = "Spoke01_subnet"
    resource_group_name  = "Project007"
    virtual_network_name = "Spoke_vnet01"
    address_prefixes     = ["10.1.1.0/24"]
  }
  subnet06 = {
    name                 = "Spoke02_subnet"
    resource_group_name  = "Project007"
    virtual_network_name = "Spoke_vnet02"
    address_prefixes     = ["10.2.1.0/24"]
  }
  subnet07 = {
    name                 = "Spoke03_subnet"
    resource_group_name  = "Project007"
    virtual_network_name = "Spoke_vnet03"
    address_prefixes     = ["10.3.1.0/24"]
  }
}