#configure eks eith terraform 

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~>17.0"

  cluster_name    = "jenkins-project-cluster"
  cluster_version = "1.21"
  subnets         = ["subnet123", "subnet123"]
  vpc_id          = "vpc-123456789"

  node_groups = {
    eks-node-group = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t2.medium"
    }
  }
}



