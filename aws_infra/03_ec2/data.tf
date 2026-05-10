# aws_infra/ec2/data.tf
data "aws_vpc" "aws00_vpc" {
  filter {
    name   = "tag:Name"
    values = ["${var.prefix}-vpc"]
  }
}
data "aws_subnet" "aws00_public_subnet" {
  filter {
    name   = "tag:Name"
    values = ["${var.prefix}-public-subnet-1"]
  }
}
data "aws_security_group" "aws00_ssh_sg" {
  filter {
    name   = "tag:Name"
    values = ["${var.prefix}-ssh-sg"]
  }
}
data "aws_security_group" "aws00_http_sg" {
  filter {
    name   = "tag:Name"
    values = ["${var.prefix}-http-sg"]
  }
}