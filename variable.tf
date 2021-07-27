# AWS Region.
variable "aws_region" {}

# Auto Scaling Group.
variable "aws_autoscaling_group_name" {}
variable "aws_autoscaling_group_desired_capacity" {}
variable "aws_autoscaling_group_min_size" {}
variable "aws_autoscaling_group_max_size" {}

# ASG Mixed Instance Types.
variable "aws_autoscaling_group_instance_type_1" {}
variable "aws_autoscaling_group_weighted_capacity_1" {}
variable "aws_autoscaling_group_instance_type_2" {}
variable "aws_autoscaling_group_weighted_capacity_2" {}

# Launch Template Configuration.
variable "aws_launch_template_name" {}
variable "aws_launch_template_instance_type" {}

# Elastic Load Balancer.
variable "aws_elb_name" {}

# Security Group.
variable "aws_security_group_name" {}
variable "aws_security_group_description" {}
variable "aws_security_group_cidr_block" {}

# SSH-Keygen.
variable "aws_key_pair_name" {}
variable "aws_key_pair_path" {}

# CIDR Block.

# Tags.
variable "aws_tags" {}