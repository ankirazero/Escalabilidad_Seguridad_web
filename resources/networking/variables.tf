variable "rg_name" {}
variable "vnet_name" {}
variable "vnet_range" { type = list(string) }
variable "location" {}
variable "subnet_sa" {}
variable "subnet_front" {}
variable "subnet_back" {}
