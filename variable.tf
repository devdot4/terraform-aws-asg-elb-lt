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
variable "aws_security_group_service_ports" {}

# SSH-Keygen.
variable "aws_key_pair_name" {}
variable "aws_key_pair_path" {}

# Data Source AWS AMI.
variable "aws_ami_owners" {}
variable "aws_ami_most_recent" {}
variable "aws_ami_filter_name1" {}
variable "aws_ami_filter_value1" {}
variable "aws_ami_filter_name2" {}
variable "aws_ami_filter_value2" {}
variable "aws_ami_filter_name3" {}
variable "aws_ami_filter_value3" {}

# AWS ELB.
variable "aws_elb_listener_instance_port" {}
variable "aws_elb_listener_instance_protocol" {}
variable "aws_elb_listener_lb_port" {}
variable "aws_elb_listener_lb_protocol" {}
variable "aws_elb_health_check_healthy_threshold" {}
variable "aws_elb_health_check_unhealthy_threshold" {}
variable "aws_elb_health_check_timeout" {}
variable "aws_elb_health_check_target" {}
variable "aws_elb_health_check_interval" {}
variable "aws_elb_cross_zone_load_balancing" {}
variable "aws_elb_idle_timeout" {}
variable "aws_elb_connection_draining" {}
variable "aws_elb_connection_draining_timeout" {}

# Tags.
variable "aws_tags" {}