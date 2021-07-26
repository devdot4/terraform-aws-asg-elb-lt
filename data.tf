data "aws_ami" "example" {
  most_recent = var.aws_ami_most_recent
  owners      = var.aws_ami_owners
  filter {
    name   = var.aws_ami_filter_name
    values = var.aws_ami_filter_values
  }
}