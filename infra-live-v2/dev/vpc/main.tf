provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "local" {
    path = "tertaform.tfstate"
  }
}

module "vpc" {
  source = "../../../infra-modules/dev/vpc"

  env = "dev"
  azs = [ "ap-south-1a", "ap-south-1b"]
  private_subnets = [ "10.0.0.0/19", "10.0.32.0/19"]
  public_subnets = [ "10.0.64.0/19", "10.0.96.0/19"]

  private_subnets_tags = {
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/{var.env}-demo"  = "owned"
  }
  public_subnets_tags = {
    "kubernetes.io/role/elb" = "1"
    "kubernetes.io/cluster/{var.env}-demo"  = "owned"
  }

}