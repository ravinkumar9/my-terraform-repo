#terraform
# This module creates an EKS cluster in AWS.
resource "aws_eks_cluster" "main" {
  name     = var.cluster_name
  role_arn = var.role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  tags = {
    Name = var.cluster_name
  }
}