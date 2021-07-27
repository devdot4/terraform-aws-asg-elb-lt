variable "aws_region" { default = "us-east-1" }

variable "asg_desired_capacity" {}
variable "asg_min_size" {}
variable "asg_max_size" {}

variable "aws_ami_most_recent" {}
variable "aws_ami_owners" { type = list(string) }
variable "aws_ami_filter_name" {}
variable "aws_ami_filter_values" { type = list(string) }

variable "key_name" {}
variable "key_location" {}

variable "app_name" {}
variable "open_cidr_block" { type = list(any) }

variable "tags" {}