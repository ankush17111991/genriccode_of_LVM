module "rgs" {
  source          = "../../module/azurerm_resource_group"
  resource_groups = var.resource_groups
}
module "stg" {
  source           = "../../module/azurerm_storage_account"
  depends_on       = [module.rgs]
  storage_accounts = var.storage_accounts
}

module "vnets0" {
  source           = "../../module/azurerm_vnet"
  depends_on       = [module.rgs]
  virtual_networks = var.virtual_networks

}

module "subnet0" {
  source     = "../../module/azurerm_subnet"
  depends_on = [module.vnets0]
  subnets    = var.subnets

}
module "vms" {
  source           = "../../module/azurerm_vm"
  virtual_machines = var.virtual_machines
  depends_on       = [module.subnet0]
}
