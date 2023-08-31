resource "azurerm_user_assigned_identity" "aks_identity" {
  resource_group_name = var.rg_name
  location            = var.location
  name                = "teez-identity"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  resource_group_name = var.rg_name
  location            = var.location
  tags                = var.tags

  dns_prefix = "teez"

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.aks_identity.id]
  }

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

}