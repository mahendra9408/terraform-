provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source            = "../modules/vpc"
  name              = "my-vpc"
  cidr_block        = "10.0.0.0/16"
  public_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets   = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
}

module "eks" {
  source          = "../modules/eks"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.21"
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.public_subnet_ids

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }

  tags = {
    Environment = "dev"
    Project     = "example"
  }
}
