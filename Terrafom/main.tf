terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

module "ec2" {
  source      = "./modules/ec2"
}

module "vpc" {
  source      = "./modules/vpc"
}