module "tf-vpc" {
    source = "../modules"
    environment = "PROD"
}

output "vpc-cidr_block" {
    value = module.tf-vpc.vpc_cidr
}