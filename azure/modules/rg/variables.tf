variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Resource location"
}

variable "tags" {
  type        = map
  description = "Resource group tags"
}