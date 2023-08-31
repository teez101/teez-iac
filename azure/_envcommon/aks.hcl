locals {
  global_vars   = read_terragrunt_config(find_in_parent_folders("global-vars.hcl"))
  region_vars   = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  env_vars      = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  tags          = local.global_vars.locals.tags
  resource_name = "${local.global_vars.locals.resource_names.aks_name_base}"
}

dependency "rg" {
  config_path = "${get_terragrunt_dir()}//../rg"

  mock_outputs = {
    rg_name = "MOCK-app-rg"
  }
}

inputs = {
  aks_name = local.resource_name
  rg_name  = dependency.rg.outputs.rg_name
  location = local.region_vars.locals.location
  tags     = local.tags
}