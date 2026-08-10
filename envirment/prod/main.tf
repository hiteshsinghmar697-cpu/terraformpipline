module "rg" {
  source = "../../module/resource_group"
  rgs    = var.rgs
}

module "vnet" {
  source     = "../../module/virtualnetwork"
  vnets      = var.vnets
  depends_on = [module.rg]
}

module "subnet" {
  source     = "../../module/subnet"
  subnet     = var.subnet
  depends_on = [module.vnet]
}

module "pip" {
  source     = "../../module/publicip"
  pips       = var.pips
  depends_on = [module.rg]
}

module "nic" {
  source     = "../../module/nic"
  nics       = var.nics
  depends_on = [module.subnet, module.pip]
}

module "vm" {
  source     = "../../module/vm"
  vms        = var.vms
  depends_on = [module.nic]
}