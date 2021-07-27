# AWS Region.
aws_region = "us-east-1"

# ASG Mixed Instance Types.
asg_desired_capacity = 1
asg_min_size         = 1
asg_max_size         = 1

# Security Group Name.
app_name = "wordpress"

# SSH-Key
key_name     = "mykey"
key_location = "~/.ssh/id_rsa.pub"

# CIDR Block.
open_cidr_block = ["0.0.0.0/0"]

# AWS Tags.
tags = {
  name        = "wordpress"
  environment = "dev"
}