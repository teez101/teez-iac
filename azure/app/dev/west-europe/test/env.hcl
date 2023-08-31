locals {
  region_vars     = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  env             = "test"
  module_version  = "4.1.18"
}