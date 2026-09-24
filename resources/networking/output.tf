output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID de la VPC"
}

output "subnet_front_id" {
  value       = aws_subnet.front.id
  description = "ID de la subred pública front"
}

output "subnet_back_id" {
  value       = aws_subnet.back.id
  description = "ID de la subred privada back"
}

output "subnet_sa_id" {
  value       = aws_subnet.sa.id
  description = "ID de la subred privada storage/sa"
}