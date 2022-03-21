# HCL - Hashicorp Configuration Language
# Linguagem declarativa 

# datalake bucket
resource "aws_s3_bucket" "datalake" {
  # Resource configuration parameters
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
  bucket = "${var.base_bucket_name}-${var.ambiente}-${var.numero_conta}"

  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }

}

# datalake acl
resource "aws_s3_bucket_acl" "datalake_acl" {
  bucket = aws_s3_bucket.datalake.bucket
  acl    = "private"
}

# datalake side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "datalake_side_encryption" {
  bucket = aws_s3_bucket.datalake.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# stream bucket
resource "aws_s3_bucket" "stream" {
  bucket = "igti-fer-streaming-bucket"

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }
}

# stream acl
resource "aws_s3_bucket_acl" "stream_acl" {
  bucket = aws_s3_bucket.stream.bucket
  acl    = "private"
}

# stream side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "stream_side_encryption" {
  bucket = aws_s3_bucket.stream.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
