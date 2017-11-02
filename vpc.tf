module "vpc" {

  source = "terraform-aws-modules/vpc/aws"

  name            = "${var.infra_name}"
  cidr            = "${var.vpc_cidr}"
  azs             = "${var.azs}"
  public_subnets  = "${var.public_subnets}"
  private_subnets = "${var.private_subnets}"

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
