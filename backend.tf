terraform {
  backend "s3" {
    bucket         = "my-terraf"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}