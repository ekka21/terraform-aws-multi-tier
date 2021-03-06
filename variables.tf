provider "aws" {
  version    = "~> 1.2"

  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "allow_ip_address" {}

variable "region"     { default = "us-east-1" }
variable "infra_name" { default = "aws-senario2"}
variable "vpc_cidr"   { default = "10.0.0.0/16" }
variable "azs" {
  type    = "list"
  default = ["us-east-1a"]
}
variable "public_subnets" {
  type    = "list"
  default = ["10.0.0.0/24"]
}
variable "private_subnets" {
  type    = "list"
  default = ["10.0.1.0/24"]
}

variable "ec2_public_instances" { default = "1" }
variable "ami" { default ="ami-6cd01a16"} #ubuntu17.04
variable "instance_type" { default ="t2.micro"}
