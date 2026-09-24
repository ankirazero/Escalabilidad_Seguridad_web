variable "environment" {
  type    = string
  default = "dev"
}

variable "rg_name" {
  type        = string
  description = "Nombre del Resource Group"
}

variable "location" {
  type        = string
  description = "Ubicacion de Azure"
}

variable "security_group_name" {
  type        = string
  default     = "web-nsg"
  description = "Nombre del Network Security Group"
}

