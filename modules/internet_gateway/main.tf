resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.project_name}-igw"
  }
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}