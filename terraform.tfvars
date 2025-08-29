region             = "us-east-1"
cluster_name       = "my-eks-cluster"
project_name       = "my-eks-project"
availability_zones = ["us-east-1a", "us-east-1b"]

node_desired_size  = 2
node_max_size      = 2
node_min_size      = 2
node_instance_type = "t3.medium"