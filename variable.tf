# AWS Region.
variable "aws_region" {}

# Auto Scaling Group.
variable "asg_desired_capacity" {}
variable "asg_min_size" {}
variable "asg_max_size" {}

# Security Group Name.
variable "app_name" {}

# SSH-Key.
variable "key_name" {}
variable "key_location" {}

# CIDR Block.
variable "open_cidr_block" {}

# AWS Tags.
variable "tags" {}