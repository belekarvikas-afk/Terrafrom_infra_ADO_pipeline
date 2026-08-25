module "rg" {
  source = "../../modules/01Azurerm_resource_group"
  rgs    = var.resource_group
}
module "vnet" {
  source     = "../../modules/02Azurerm_virtual_network"
  vnets      = var.virtual_network
  depends_on = [module.rg]
}
module "subnet" {
  source     = "../../modules/03Azurerm_subnet"
  subnets    = var.subnet
  depends_on = [module.vnet]
}
