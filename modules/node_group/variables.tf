variable "cluster_name" {}
variable "project_name" {}
variable "node_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "desired_size" {
  type = number
}
variable "max_size" {
  type = number
}
variable "min_size" {
  type = number
}
variable "instance_type" {
  type = string
}