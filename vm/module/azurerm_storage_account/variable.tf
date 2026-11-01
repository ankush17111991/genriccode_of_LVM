
# variable "storage_accounts" {
#   description = "Map of Azure Storage Accounts"

#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     account_tier        = string
#     replication_type    = optional(string, "LRS")
#     tags                = optional(map(string), {})
#   }))
# }
