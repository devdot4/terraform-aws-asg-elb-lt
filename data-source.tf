data "aws_availability_zones" "all" {}
data "aws_ami" "image" {
  owners      = var.aws_ami_owners
  most_recent = var.aws_ami_most_recent
  filter {
    name   = var.aws_ami_filter_name1
    values = var.aws_ami_filter_value1
  }
  filter {
    name   = var.aws_ami_filter_name2
    values = var.aws_ami_filter_value2
  }
  filter {
    name   = var.aws_ami_filter_name3
    values = var.aws_ami_filter_value3
  }
}
output "az" {
  value = data.aws_availability_zones.all.names
}
output "module" {
  value = module.vpc
}