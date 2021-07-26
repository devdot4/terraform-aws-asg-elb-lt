# aws region
aws_region = "us-east-1"

# asg availablity_zones
asg_availability_zones = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
]

# asg mixed instance types
asg_desired_capacity = 1
asg_min_size         = 1
asg_max_size         = 1

# override mixed instances
mixed_instances_instance_type     = "c4.large"
mixed_instances_weighted_capacity = "3"

# override mixed isntances2
mixed_instances_instance_type2     = "c6g.large"
mixed_instances_weighted_capacity2 = "2"

# launch template example
launch_template_name_prefix = "example"
# launch_template_instance_type = "c5.large"
# launch template example2
# launch_template_name_prefix2 = "example2"

# data source for aws_ami
aws_ami_most_recent   = true
aws_ami_owners        = ["amazon"]
aws_ami_filter_name   = "name"
aws_ami_filter_values = ["amzn-ami-hvm-*-x86_64-gp2"]

app_name        = "myapp"
key_location    = "~/.ssh/id_rsa.pub"
key_name        = "mykey"
ssh_cidr_blocks = ["0.0.0.0/0"]

tags = {
  Name        = "myapp"
  Environment = "Dev"
}