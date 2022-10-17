# Synapse pools with feature flags, change variable values to enable those (false by default)

# Sql Pool 
resource "azurerm_synapse_sql_pool" "syn_syndp" {
  name                 = "syndp${var.postfix}"
  synapse_workspace_id = var.synapse_workspace_id
  sku_name             = "DW100c"
  create_mode          = "Default"
  count                = var.enable_syn_sqlpool ? 1 : 0
}

