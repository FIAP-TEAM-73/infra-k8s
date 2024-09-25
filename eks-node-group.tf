resource "aws_eks_node_group" "group-1" {
  cluster_name    = aws_eks_cluster.tech-challenge-73.name
  node_group_name = "group1"
  node_role_arn   = var.role
  subnet_ids      = var.subnets[*]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  instance_types = ["t2.micro"]
}

resource "aws_eks_node_group" "group-2" {
  ami_type        = "AL2023_ARM_64_STANDARD"
  cluster_name    = aws_eks_cluster.tech-challenge-73.name
  node_group_name = "group2"
  node_role_arn   = var.role
  subnet_ids      = var.subnets[*]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  instance_types = ["m6g.large"]
  disk_size      = 20
}