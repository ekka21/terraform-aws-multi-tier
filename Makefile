init:
	terraform init

plan: init
	terraform plan -var-file=terraform.tfvars

apply: init
	terraform apply -var-file=terraform.tfvars



.PHONY: plan apply
