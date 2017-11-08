module "ssh_sg" {

  source = "terraform-aws-modules/security-group/aws"

  name        = "${var.infra_name}-ssh_sg"
  description = "Allow incoming ssh requests"
  vpc_id      = "${module.vpc.vpc_id}"

	ingress_cidr_blocks = ["${var.allow_ip_address}"]
  ingress_rules       = ["ssh-tcp"]
	egress_rules        = ["all-all"]
}
