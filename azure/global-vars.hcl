locals {
  app_name = "teez"

  tags = {
    "name" = "${local.app_name}"
  }

  resource_names = {
    rg_name_base  = "${local.app_name}-rg"
    aks_name_base = "${local.app_name}-aks"
  }
}