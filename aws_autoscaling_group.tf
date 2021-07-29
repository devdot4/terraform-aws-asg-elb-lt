resource "aws_autoscaling_group" "aws_asg" {
  name                = var.aws_asg_name
  desired_capacity    = var.aws_asg_desired_capacity
  min_size            = var.aws_asg_min_size
  max_size            = var.aws_asg_max_size
  capacity_rebalance  = var.aws_asg_capacity_rebalance
  vpc_zone_identifier = module.vpc.public_subnets
  tags                = [var.aws_tags]
  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity                  = var.aws_asg_on_demand_base_capacity
      on_demand_percentage_above_base_capacity = var.aws_asg_on_demand_percentage_above_base_capacity
      spot_allocation_strategy                 = var.aws_asg_spot_allocation_strategy
    }
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.aws_lt.id
      }
      override {
        instance_type     = var.aws_asg_instance_type_1
        weighted_capacity = var.aws_asg_weighted_capacity_1
      }
      override {
        instance_type     = var.aws_asg_instance_type_2
        weighted_capacity = var.aws_asg_weighted_capacity_2
      }
      override {
        instance_type     = var.aws_asg_instance_type_3
        weighted_capacity = var.aws_asg_weighted_capacity_3
      }
    }
  }
}
resource "aws_autoscaling_attachment" "aws_aa" {
  autoscaling_group_name = aws_autoscaling_group.aws_asg.id
  elb                    = aws_elb.aws_elb.id
  alb_target_group_arn   = aws_lb_target_group.aws_lb_tg.arn
}