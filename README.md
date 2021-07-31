# Team-4 Module
File Dependency Hierarchy:
```
├─data.tf
├─variable.tf
└─module.tf
  └─terraform.tfvars
    ├─aws_elb.tf
    ├─aws_autoscaling-group.tf
    ├─aws_security_group.tf
    └─aws_launch_template.tf
      └─user-data.sh
        └─wp-config.php
```
## Module Configuration:
Please create a terraform file and add these lines below:
```
module "project" {
  source  = "devdot4/asg-elb-lt/aws"
  version = "1.0.0"

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
  rds_name               = "wordpress"
  rds_engine             = "aurora"
  rds_engine_version     = "5.6.10a"
  rds_instance_class     = "db.t3.small"
  rds_ssm_parameter_name = "admin"
  rds_route53_zone       = "devdot4.net"
  rds_subnet_group_name  = "rds-aurora"
  rds_cluster_identifier = "wordpress"
  rds_master_username    = "admin"
  rds_master_password    = "redhat69"

  # Auto Scaling Group.
  aws_asg_name               = "aws-asg"
  aws_asg_desired_capacity   = 5
  aws_asg_min_size           = 5
  aws_asg_max_size           = 99
  aws_asg_capacity_rebalance = true

  # ASG Mixed Instance Types.
  aws_asg_on_demand_base_capacity                  = 50
  aws_asg_on_demand_percentage_above_base_capacity = 50
  aws_asg_spot_allocation_strategy                 = "capacity-optimized"
  aws_asg_instance_type_1                          = "c3.large"
  aws_asg_weighted_capacity_1                      = "3"
  aws_asg_instance_type_2                          = "c4.large"
  aws_asg_weighted_capacity_2                      = "2"
  aws_asg_instance_type_3                          = "c5.large"
  aws_asg_weighted_capacity_3                      = "1"

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
  aws_lt_image_id      = "ami-0cde3d3eb0550c016"
  aws_lt_instance_type = "c3.large"

  # SSH-Keygen.
  aws_kp_name = "aws-key-pair"
  aws_kp_path = "~/.ssh/id_rsa.pub"

  # Security Group.
  aws_sg_name          = "aws-sg"
  aws_sg_description   = "Allow TLS inbound traffic."
  aws_sg_service_ports = ["22", "80", "443", "3306"]
  aws_sg_cidr_block    = "0.0.0.0/0"

  # Tags.
  aws_tags = {
    Name        = "team-4"
    Environment = "production"
    Batch       = "january"
  }
}
```
Please run the following commands to run this module:
```
terraform init
terraform apply
```