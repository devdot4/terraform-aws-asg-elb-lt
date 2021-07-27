# asg-team4
```
└─ provider.tf
   variable.tf
   └─ terraform.tfvars
      ├─ auto-scaling-group.tf
      ├─ data-source.tf
      ├─ elastic-load-balancer.tf
      ├─ launch_template.tf
      └─ security-group.tf
```

Module Configuration:
```
# AWS Region.
aws_region = "us-east-1"

# Auto Scaling Group.
asg_name             = "asg-team4"
asg_desired_capacity = 2
asg_min_size         = 2
asg_max_size         = 99

# ASG Mixed Instance Types.
asg_instance_type_1     = "t2.micro"
asg_weighted_capacity_1 = "4"
asg_instance_type_2     = "t3.micro"
asg_weighted_capacity_2 = "2"

# Launch Template Configuration.
aws_launch_template_name          = "lt-team4"
aws_launch_template_instance_type = "t2.micro"

# Elastic Load Balancer
aws_elb_name = "elb-team4"

# Security Group.
aws_security_group_name        = "sec-group-team4"
aws_security_group_description = "Allow TLS inbound traffic."

# SSH-Keygen.
key_name     = "ssh-key"
key_location = "~/.ssh/id_rsa.pub"

# CIDR Block.
open_cidr_block = ["0.0.0.0/0"]

# Tags.
tags = {
  Name        = "team4"
  Environment = "dev"
}
```