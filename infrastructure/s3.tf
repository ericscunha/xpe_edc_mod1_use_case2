resource "aws_s3_bucket" "dl" {
  bucket = "datalake-esc-igit-edc-tf"
  acl         = "private"

  tags = { 
    IES         = "IGTI",
    CURSO = "EDC"
    AUTOR = "ESC"
  }


  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

