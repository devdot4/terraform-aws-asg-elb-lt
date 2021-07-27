# aws region
aws_region = "us-east-1"

# asg mixed instance types
asg_desired_capacity = 1
asg_min_size         = 1
asg_max_size         = 1

# data source for aws_ami
aws_ami_most_recent   = true
aws_ami_owners        = ["amazon"]
aws_ami_filter_name   = "name"
aws_ami_filter_values = ["amzn-ami-hvm-*-x86_64-gp2"]

# other stuff
app_name        = "wordpress"
key_location    = "~/.ssh/id_rsa.pub"
key_name        = "mykey"
open_cidr_block = ["0.0.0.0/0"]

# AWS tags
tags = {
  name        = "wordpress"
  environment = "dev"
}