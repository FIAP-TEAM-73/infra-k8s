resource "aws_eks_node_group" "group-1" {
  cluster_name    = aws_eks_cluster.tech-challenge-73.name
  node_group_name = "group1"
  node_role_arn   = var.role
  subnet_ids      = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.region}e"]

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
  cluster_name    = aws_eks_cluster.tech-challenge-73.name
  node_group_name = "group2"
  node_role_arn   = var.role
  subnet_ids      = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.region}e"]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  instance_types = ["t3.medium"]
  disk_size      = 20
}