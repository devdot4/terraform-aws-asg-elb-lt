resource "aws_security_group" "aws_sg" {
  name        = var.aws_security_group_name
  description = var.aws_security_group_description
  vpc_id      = module.vpc.vpc
  dynamic "ingress" {
    for_each = var.aws_security_group_service_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.aws_security_group_cidr_block]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.aws_tags
}