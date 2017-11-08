module "ec2_public" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name  = "${var.infra_name}-public"
  count = "${var.ec2_public_instances}"

  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${module.ssh.key_name}"
  subnet_id                   = "${module.vpc.public_subnets[0]}"
  vpc_security_group_ids      = ["${module.ssh_sg.this_security_group_id}"]
	associate_public_ip_address = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

output "public_ips" {
  value = "${module.ec2_public.public_ip}"
}
