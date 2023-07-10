provider "aws" {
  region = "us-east-1"
}


module "docker-instance" {
  source  = "kodal035/docker-instance/aws"
  version = "0.0.1"
  key_name              = "firstpemkey"
  tag                   = "kodal-tf-module-lesson"
  num_of_instance       = 2
  docker-instance-ports = [22, 443]
}

# module "docker-instance" {
#   source                = "kodal035/docker-instance/aws"
#   version               = "0.0.1"
#   key_name              = "firstkeypem"
#   tag                   = "kodal-tf-module-lesson"
#   num_of_instance       = 1
#   docker-instance-ports = [22, 443]
# }