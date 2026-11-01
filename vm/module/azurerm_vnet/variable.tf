
# variable "virtual_machines" {
#   description = "Map of Azure Linux Virtual Machines"

#   type = map(object({
#     vm_name              = string
#     nic_name             = string
#     location             = string
#     resource_group_name  = string

#     subnet_name          = string
#     virtual_network_name = string

#     vm_size        = string
#     admin_username = string
#     admin_password = string

#     publisher = string
#     offer     = string
#     sku       = string
#   }))

#   sensitive = true
# }
