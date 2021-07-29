provider "aws" { region = var.aws_region }
data "aws_availability_zones" "all" {}
data "aws_ami" "image" {
  owners      = [var.aws_ami_owners]
  most_recent = var.aws_ami_most_recent
  filter {
    name   = var.aws_ami_filter_name_1
    values = [var.aws_ami_filter_value_1]
  }
  filter {
    name   = var.aws_ami_filter_name_2
    values = [var.aws_ami_filter_value_2]
  }
  filter {
    name   = var.aws_ami_filter_name_3
    values = [var.aws_ami_filter_value_3]
  }
}