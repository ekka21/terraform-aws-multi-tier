# Scenario 2: VPC with Public and Private Subnets (NAT)
The purpose of this repo is to show how quickly and easily [Terraform](http://terraform.io) and its modules can provision an entried aws
infrastructure. The following diagram shows the key components of the configuration for
this scenario:
![aws vpc with pub/pri
subnet](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/images/nat-gateway-diagram.png "aws vpc with public/private subnets arc")


You can find more detail at [AWS
UserGuide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario2.html).

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= v0.10.8
- [AWS](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html) access/secret key with PowerUserAccess role)

## Provision AWS infrastructure
- Copy `terraform.tfvars.example` to `terraform.tfvars` then add AWS access/secret key and ip address
- Run `make plan` or `terraform plan -var-file=terraform.tfvars` to plan an infrastructure
- Run `make apply` or `terraform apply -var-file=terraform.tfvars` to build an infrastructure

