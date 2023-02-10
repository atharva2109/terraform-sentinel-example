terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "demo-atharvk-org"

    workspaces {
      name = "terraform-sentinel-example"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
}
module "apache" {
  source        = "atharva2109/apache/aws"
  version       = "1.1.0"
  instance_type = var.instance_type
  ip_address    = var.ip_address
  vpc_id        = var.vpc_id
}
