# data "aws_ami" "image" {
#   most_recent = true
#   filter {
#     name   = "name"
#     values = ["amazon/amzn2-ami-hvm-2.0.20210701.0-x86_64-gp2-*"]
#   }
#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
#   owners = ["099720109477"]
# }
data "aws_availability_zones" "all" {}
output "az" {
  value = data.aws_availability_zones.all.names
}

data "aws_ami" "image" {
owners      = ["679593333241"]
most_recent = true

  filter {
      name   = "name"
      values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
      name   = "architecture"
      values = ["x86_64"]
  }

  filter {
      name   = "root-device-type"
      values = ["ebs"]
  }
}