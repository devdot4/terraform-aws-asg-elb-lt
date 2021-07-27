resource "aws_security_group" "sec_group_team4" {
  name        = "${var.app_name}-team4"
  description = "Allow TLS inbound traffic"
  ingress {
    description = "VPC - SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.open_cidr_block
  }
  ingress {
    description = "VPC - HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.open_cidr_block
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags
}