provider "aws" { region = var.aws_region }
data "aws_availability_zones" "all" {}
resource "aws_launch_template" "aws_lt" {
  image_id               = data.aws_ami.image.id
  name                   = var.aws_lt_name
  instance_type          = var.aws_lt_instance_type
  key_name               = aws_key_pair.aws_kp.key_name
  vpc_security_group_ids = [aws_security_group.aws_sg.id]
  user_data              = filebase64("${path.module}/user-data.sh")
  tags                   = var.aws_tags
}
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
resource "aws_key_pair" "aws_kp" {
  key_name   = var.aws_kp_name
  public_key = file(var.aws_kp_path)
  tags       = var.aws_tags
}