variable "aks_name" {
  type        = string
  description = "Aks name"
}

variable "rg_name" {
  type        = string
  description = "RG name"
}

variable "location" {
  type        = string
  description = "Resource location"
}

variable "tags" {
  type        = map
  description = "Resource group tags"
}