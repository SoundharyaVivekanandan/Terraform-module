provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA5DG47IVSQCP6LBLZ"
  secret_key = "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"
}
module "vpc" {
  source   = "./vpc"
  vpc_cidr = var.vpc_cidr
}

module "s3" {
  source           = "./s3"
  s3_bucket_name   = var.s3_bucket_name
}

module "rds" {
  source              = "./rds"
  db_allocated_storage = var.db_allocated_storage
}
