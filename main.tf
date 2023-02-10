terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATWAZVG7Z2XIZGEWP"
  secret_key = "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"
}

module "apache" {
  source        = "atharva2109/apache/aws"
  version       = "1.1.0"
  instance_type = "t2.micro"
  ip_address    = "165.225.120.220/32"
  vpc_id        = "vpc-058194cc3a8f7761d"
}
