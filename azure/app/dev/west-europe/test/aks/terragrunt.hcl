include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_path_to_repo_root()}/azure/_envcommon/aks.hcl"
  expose = true
}

terraform {
  source = "${get_path_to_repo_root()}/azure/modules//aks"
}