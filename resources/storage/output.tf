
output "bucket_id" {
  value       = aws_s3_bucket.storage.id
  description = "Nombre o ID del bucket S3"
}

output "bucket_arn" {
  value       = aws_s3_bucket.storage.arn
  description = "ARN del bucket S3"
}