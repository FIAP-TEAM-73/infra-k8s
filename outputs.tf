output "region" {
  description = "AWS region"
  value       = var.region
}

output "endpoint" {
  value = aws_eks_cluster.tech-challenge-73.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.tech-challenge-73.certificate_authority[0].data
}