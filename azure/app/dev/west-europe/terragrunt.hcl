locals {
}

remote_state {
  backend  = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    resource_group_name  = "weu-teez-test-tfstate-rg"
    storage_account_name = "weuteeztesttfstate"
    container_name       = "tfstate"
    key       = "${path_relative_to_include()}/terraform.tfstate"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "azurerm" {
  features {}
  subscription_id = "ace306d4-b772-443e-a0e3-b9d589ab33d6"
  tenant_id       = "8d16a26d-6fc5-47cb-97f8-4d093334cfe1"
}
EOF
}