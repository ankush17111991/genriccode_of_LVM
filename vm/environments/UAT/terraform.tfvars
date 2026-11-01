
resource_groups = {
  rg001 = {
    name     = "rg-dev-eastus"
    location = "East US"

    tags = {
      Environment = "Dev"
      Owner       = "Team-A"
    }
  }

  rg002 = {
    name     = "rg-prod-centralus"
    location = "Central US"

    tags = {
      Environment = "Prod"
      Owner       = "Team-B"
    }
  }

  rg003 = {
    name     = "rg-test-westus"
    location = "West US"

    tags = {
      Environment = "Test"
    }
  }
}



storage_accounts = {
  stg001 = {
    name                = "stgdev001"
    location            = "East US"
    resource_group_name = "rg-dev-eastus"
    account_tier        = "Standard"
    replication_type    = "LRS"

    tags = {
      Environment = "Dev"
      Owner       = "Team-A"
    }
  }

  stg002 = {
    name                = "stgprod001"
    location            = "Central US"
    resource_group_name = "rg-prod-centralus"
    account_tier        = "Standard"
    replication_type    = "GRS"

    tags = {
      Environment = "Prod"
      Owner       = "Team-B"
    }
  }
}


virtual_networks = {
  vnet001 = {
    name                = "vnet-dev"
    location            = "East US"
    resource_group_name = "rg-dev-eastus"
    address_space       = ["10.0.0.0/16"]

    tags = {
      Environment = "Dev"
      Owner       = "Team-A"
    }
  }

  vnet002 = {
    name                = "vnet-prod"
    location            = "Central US"
    resource_group_name = "rg-prod-centralus"
    address_space       = ["10.1.0.0/16", "10.2.0.0/16"]

    tags = {
      Environment = "Prod"
      Owner       = "Team-B"
    }
  }
}


subnets = {
  subnet001 = {
    name                 = "subnet-web"
    resource_group_name  = "rg-dev-eastus"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet002 = {
    name                 = "subnet-app"
    resource_group_name  = "rg-dev-eastus"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnet003 = {
    name                 = "subnet-db"
    resource_group_name  = "rg-prod-centralus"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["10.1.1.0/24"]
  }
}



# network_interfaces = {
#   nic001 = {
#     nic_name             = "nic-web-001"
#     location             = "East US"
#     resource_group_name  = "rg-dev"
#     subnet_name          = "subnet-web"
#     virtual_network_name = "vnet-dev"
#   }

#   nic002 = {
#     nic_name             = "nic-app-001"
#     location             = "East US"
#     resource_group_name  = "rg-dev"
#     subnet_name          = "subnet-app"
#     virtual_network_name = "vnet-dev"
#   }
# }


virtual_machines = {
  vm001 = {
    vm_name             = "dev-vm-001"
    nic_name            = "dev-nic-001"
    location            = "East US"
    resource_group_name = "rg-dev"

    subnet_name          = "subnet-web"
    virtual_network_name = "vnet-dev"

    vm_size        = "Standard_D2as_v5"
    admin_username = "azureadmin"
    admin_password = "Your-Strong-Password"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
  }

  vm002 = {
    vm_name             = "dev-vm-002"
    nic_name            = "dev-nic-002"
    location            = "East US"
    resource_group_name = "rg-dev"

    subnet_name          = "subnet-app"
    virtual_network_name = "vnet-dev"

    vm_size        = "Standard_D2as_v5"
    admin_username = "azureadmin"
    admin_password = "Another-Strong-Password"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
  }
}






