# AWS Region.
variable "aws_region" {}

# Auto Scaling Group.
variable "asg_name" {}
variable "asg_desired_capacity" {}
variable "asg_min_size" {}
variable "asg_max_size" {}

# ASG Mixed Instance Types.
variable "asg_instance_type_1" {}
variable "asg_weighted_capacity_1" {}
variable "asg_instance_type_2" {}
variable "asg_weighted_capacity_2" {}

# Launch Template Configuration.
variable "aws_launch_template_name" {}
variable "aws_launch_template_instance_type" {}

# Elastic Load Balancer.
variable "aws_elb_name" {}

# Security Group.
variable "aws_security_group_description" {}
variable "aws_security_group_name" {}

# SSH-Keygen.
variable "aws_key_pair_name" {}
variable "aws_key_pair_path" {}

# CIDR Block.
variable "aws_security_group_cidr" {}

# Tags.
variable "aws_tags" {}