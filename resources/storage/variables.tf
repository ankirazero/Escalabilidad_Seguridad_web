
variable "location" {
  description = "Región de Azure donde se creará el storage"
  type        = string
}

variable "rg_name" {
  description = "Nombre del Resource Group (vendrá del output de networking)"
  type        = string
}

variable "subnet_id" {
  type = string
}