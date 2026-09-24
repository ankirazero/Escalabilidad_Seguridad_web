variable "environment" {
  type    = string
  default = "dev"
}

variable "subnet_id" {
  type        = string
  description = "ID de la subred donde se desplegará la instancia EC2"
}

variable "security_group_id" {
  type        = string
  description = "ID del Security Group asociado a la instancia"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Tipo de instancia EC2"
}
