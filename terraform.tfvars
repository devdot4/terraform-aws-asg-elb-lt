# AWS Region.
aws_region = "us-east-1"

# VPC Module - Team 2.
vpc_cidr_block     = "10.0.0.0/16"
vpc_public_cidr_1  = "10.0.101.0/24"
vpc_public_cidr_2  = "10.0.102.0/24"
vpc_public_cidr_3  = "10.0.103.0/24"
vpc_private_cidr_1 = "10.0.1.0/24"
vpc_private_cidr_2 = "10.0.2.0/24"
vpc_private_cidr_3 = "10.0.3.0/24"

# RDS Module - Team 3.
rds_name               = "rds_db_team3_are_the_best"
rds_engine             = "aurora"
rds_engine_version     = "5.6.10a"
rds_instance_class     = "db.t3.small"
rds_ssm_parameter_name = "admin"
rds_route53_zone       = "devdot.com"

# Auto Scaling Group.
aws_asg_name               = "aws-asg"
aws_asg_desired_capacity   = 5
aws_asg_min_size           = 5
aws_asg_max_size           = 99
aws_asg_capacity_rebalance = true

# ASG Mixed Instance Types.
aws_asg_on_demand_base_capacity                  = 0
aws_asg_on_demand_percentage_above_base_capacity = 25
aws_asg_spot_allocation_strategy                 = "capacity-optimized"
aws_asg_instance_type_1                          = "c4.large"
aws_asg_weighted_capacity_1                      = "3"
aws_asg_instance_type_2                          = "c3.large"
aws_asg_weighted_capacity_2                      = "2"

# Elastic Load Balancer.
aws_elb_name                             = "aws-elb"
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

# Elastic Load Balancer Attachment.
aws_lb_target_group_name     = "target-group-team4"
aws_lb_target_group_port     = 80
aws_lb_target_group_protocol = "HTTP"

# Launch Template Configuration.
aws_lt_name          = "aws-lt"
aws_lt_instance_type = "c5.large"

# SSH-Keygen.
aws_kp_name = "aws-key-pair"
aws_kp_path = "~/.ssh/id_rsa.pub"

# Security Group.
aws_sg_name          = "aws-sg"
aws_sg_description   = "Allow TLS inbound traffic."
aws_sg_service_ports = ["22", "80", "443", "3306"]
aws_sg_cidr_block    = "0.0.0.0/0"

# Data Source AWS AMI.
aws_ami_owners         = "679593333241"
aws_ami_most_recent    = true
aws_ami_filter_name_1  = "name"
aws_ami_filter_value_1 = "CentOS Linux 7 x86_64 HVM EBS *"
aws_ami_filter_name_2  = "architecture"
aws_ami_filter_value_2 = "x86_64"
aws_ami_filter_name_3  = "root-device-type"
aws_ami_filter_value_3 = "ebs"

# Tags.
aws_tags = {
  Name        = "team-4"
  Environment = "production"
  Batch       = "january"
}