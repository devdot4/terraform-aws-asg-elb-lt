variable "aws_region" { default = "us-east-1" }

variable "asg_availability_zones" { type = list(string) }
variable "asg_desired_capacity" {}
variable "asg_min_size" {}
variable "asg_max_size" {}

variable "mixed_instances_instance_type" {}
variable "mixed_instances_weighted_capacity" {}
variable "mixed_instances_instance_type2" {}
variable "mixed_instances_weighted_capacity2" {}

variable "launch_template_name_prefix" {}
variable "launch_template_instance_type" {}
# variable "launch_template_name_prefix2" {}

variable "aws_ami_most_recent" {}
variable "aws_ami_owners" { type = list(string) }
variable "aws_ami_filter_name" {}
variable "aws_ami_filter_values" { type = list(string) }