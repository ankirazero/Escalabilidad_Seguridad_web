variable "environment" {
  type    = string
  default = "dev"
}

variable "subnet_id" {
  type        = string
  description = "ID de la subred frontal"
}

variable "security_group_id" {
  type        = string
  description = "ID del Security Group"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Tipo de instancia EC2"
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Desplegado en AWS - Escalabilidad y Seguridad Web</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "${var.environment}-web-server"
  }
}

output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}


