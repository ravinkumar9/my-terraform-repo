resource "aws_eks_node_group" "private_nodes" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-node-group"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  instance_types = [var.instance_type]
  depends_on = [ var.cluster_name ]


  tags = {
    Name = "${var.project_name}-node-group"
  }
}