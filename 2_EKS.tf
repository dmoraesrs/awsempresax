module "eks" {
  source                            = "terraform-aws-modules/eks/aws"
  version                           = "17.24.0"
  cluster_name                      = "${var.environment}-${var.cluster_name}"
  cluster_version                   = var.cluster_version
  subnets                           = module.vpc.private_subnets


  map_users = [
    {
      userarn = "arn:aws:iam::${var.account}:user/${var.environment}-terrform-iac"
      username  = "${var.environment}-terrform-iac"
      groups    = ["system:masters"]
    },
    {
      userarn = "arn:aws:iam::${var.account}:user/teste-eks"
      username  = "teste-eks"
      groups    = ["system:masters"]
    },
  ]
  vpc_id = module.vpc.vpc_id

  workers_group_defaults = {
    root_volume_type = "gp2"
  }

  worker_groups = [
    {
      name                          = "worker-group-1"
      instance_type                 = "t3.medium"
      additional_userdata           = "Dev"
      additional_security_group_ids = [aws_security_group.worker_group_mgmt_one.id]
      asg_desired_capacity          = 1
      asg_max_size = 2
      asg_min_size = 2
      ami_id                          = var.ami_id
    },
  ]
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}
