# Team-4 Module
File Hierarchy:
```
├─provider.tf
├─user-data.sh
├─data-source.tf
└─variable.tf
  └─terraform.tfvars
    ├─auto-scaling-group.tf
    ├─elastic-load-balancer.tf
    ├─launch_template.tf
    └─security-group.tf
```
Module Configuration:
```
# AWS Region.
aws_region = "us-east-1"

# Auto Scaling Group.
aws_autoscaling_group_name             = "asg-team4"
aws_autoscaling_group_desired_capacity = 2
aws_autoscaling_group_min_size         = 2
aws_autoscaling_group_max_size         = 99

# Data Source AWS AMI.
aws_ami_owners        = ["679593333241"]
aws_ami_most_recent   = true
aws_ami_filter_name1  = "name"
aws_ami_filter_value1 = ["CentOS Linux 7 x86_64 HVM EBS *"]
aws_ami_filter_name2  = "architecture"
aws_ami_filter_value2 = ["x86_64"]
aws_ami_filter_name3  = "root-device-type"
aws_ami_filter_value3 = ["ebs"]

# Elastic Load Balancer.
aws_elb_name                             = "elb-team4"
aws_elb_listener_instance_port           = 80
aws_elb_listener_instance_protocol       = "http"
aws_elb_listener_lb_port                 = 80
aws_elb_listener_lb_protocol             = "http"
aws_elb_health_check_healthy_threshold   = 2
aws_elb_health_check_unhealthy_threshold = 2
aws_elb_health_check_timeout             = 3
aws_elb_health_check_target              = "HTTP:80/"
aws_elb_health_check_interval            = 30
aws_elb_cross_zone_load_balancing        = true
aws_elb_idle_timeout                     = 400
aws_elb_connection_draining              = true
aws_elb_connection_draining_timeout      = 400

# ASG Mixed Instance Types.
aws_autoscaling_group_instance_type_1     = "t2.micro"
aws_autoscaling_group_weighted_capacity_1 = "4"
aws_autoscaling_group_instance_type_2     = "t3.micro"
aws_autoscaling_group_weighted_capacity_2 = "2"

# Launch Template Configuration.
aws_launch_template_name          = "lt-team4"
aws_launch_template_instance_type = "t2.micro"

# Security Group.
aws_security_group_name          = "sec-group-team4"
aws_security_group_description   = "Allow TLS inbound traffic."
aws_security_group_service_ports = ["22", "80", "443"]
aws_security_group_cidr_block    = ["0.0.0.0/0"]

# SSH-Keygen.
aws_key_pair_name = "ssh-key"
aws_key_pair_path = "~/.ssh/id_rsa.pub"

# Tags.
aws_tags = {
  Name        = "team4"
  Environment = "dev"
}
```