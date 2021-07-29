resource "aws_elb" "aws_elb" {
  name            = var.aws_elb_name
  subnets         = module.vpc.public_subnets
  security_groups = [aws_security_group.aws_sg.id]
  listener {
    instance_port     = var.aws_elb_listener_instance_port
    instance_protocol = var.aws_elb_listener_instance_protocol
    lb_port           = var.aws_elb_listener_lb_port
    lb_protocol       = var.aws_elb_listener_lb_protocol
  }
  health_check {
    healthy_threshold   = var.aws_elb_health_check_healthy_threshold
    unhealthy_threshold = var.aws_elb_health_check_unhealthy_threshold
    timeout             = var.aws_elb_health_check_timeout
    target              = var.aws_elb_health_check_target
    interval            = var.aws_elb_health_check_interval
  }
  cross_zone_load_balancing   = var.aws_elb_cross_zone_load_balancing
  idle_timeout                = var.aws_elb_idle_timeout
  connection_draining         = var.aws_elb_connection_draining
  connection_draining_timeout = var.aws_elb_connection_draining_timeout
  tags                        = var.aws_tags
}
# resource "aws_elb_attachment" "baz" {
#   elb      = aws_elb.aws_elb.id
#   instance = data.aws_instances.test.id
# }

resource "aws_lb_target_group" "aws_lb_tg" {
  name     = var.aws_lb_target_group_name
  port     = var.aws_lb_target_group_port
  protocol = var.aws_lb_target_group_protocol
  vpc_id   = module.vpc.vpc
  tags     = var.aws_tags
}