remote_state {
  backend  = "local"
  config   = {}
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
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