variable "environment" {
  type    = string
  default = "dev"
}

variable "subnet_id" {
  type        = string
  description = "ID de la subred (opcional)"
  default     = ""
}

resource "aws_s3_bucket" "storage" {
  bucket = "storage-account-web-terraform-${var.environment}"

  tags = {
    Environment = var.environment
  }
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket                  = aws_s3_bucket.storage.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output "bucket_id" {
  value = aws_s3_bucket.storage.id
}

output "bucket_arn" {
  value = aws_s3_bucket.storage.arn
}