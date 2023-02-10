terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "apache" {
  source        = "atharva2109/apache/aws"
  version       = "1.1.0"
  instance_type = var.instance_type
  ip_address    = var.ip_address
  vpc_id        = var.vpc_id
}
