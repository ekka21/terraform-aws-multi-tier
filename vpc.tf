provider "aws" {
  region = "${var.region}"
}

module "vpc" {

  source = "terraform-aws-modules/vpc/aws"

  name = "${var.infra_name}"
  cidr = "${var.vpc_cidr}"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  enable_dns_hostnames = true
  enable_dns_support   = true

  map_public_ip_on_launch = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}