locals {
  region = var.region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"

  name               = "${var.environment}-${var.name}"
  cidr               = var.cidr
  azs                = ["${local.region}a", "${local.region}b"]
  #private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets 
  enable_ipv6        = var.enable_ipv6
  enable_dns_hostnames = true
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  public_subnet_tags = merge(var.globaltags)
  tags               = merge(var.globaltags)
  vpc_tags           = merge(var.globaltags)
}


