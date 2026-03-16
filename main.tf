terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.36.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "ec2_private_instance" {
  source    = "./modules/ec2_private_instance"
  ami_id    = var.ami_id
  subnet_id = var.subnet_id
  key_name  = var.key_name
}
