resource "aws_elb" "elb-team4" {
  name               = var.aws_elb_name
  availability_zones = data.aws_availability_zones.all.names
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
resource "aws_autoscaling_attachment" "asg-attach-team4" {
  autoscaling_group_name = aws_autoscaling_group.asg-team4.id
  elb                    = aws_elb.elb-team4.id
}