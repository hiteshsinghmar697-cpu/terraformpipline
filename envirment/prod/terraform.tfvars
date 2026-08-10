rgs = {
  rg1 = {
    name     = "rg-prod-danger"
    location = "south india"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-prod-danger"
    location            = "south india"
    resource_group_name = "rg-prod-danger"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "subnet-prod-first"
    virtual_network_name = "vnet-prod-danger"
    resource_group_name  = "rg-prod-danger"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "pip-prod-danger"
    resource_group_name = "rg-prod-danger"
    location            = "south india"
    allocation_method   = "Static"
  }
}

nics = {
  nic1 = {
    name                 = "nic-prod-danger"
    location             = "south india"
    resource_group_name  = "rg-prod-danger"
    virtual_network_name = "vnet-prod-danger"
    subnet_name          = "subnet-prod-first"
    public_ip            = "pip-prod-danger"
  }
}

vms = {
  vm1 = {
    name                = "vm-prod-danger"
    resource_group_name = "rg-prod-danger"
    location            = "south india"
    size                = "Standard_D4_v5"
    admin_username      = "adminhitesh"
    admin_password      = "password@123"
    nic = "nic-prod-danger"
  }
}