provider "aws" {
    region = var.aws_region
}

# Centralizar o arquivo de controle de estado do terrafrom
terraform {
    backend  "s3" {
      bucket = "terrafrom-state-igit-esc"
      key       = "state/igti/edc/mod1/terraform.tfstate"
      region = "us-east-2"
    }   
}