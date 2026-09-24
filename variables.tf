variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Región de AWS para desplegar la infraestructura"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Ambiente de despliegue (dev, prod, etc.)"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Tipo de instancia EC2"
}

