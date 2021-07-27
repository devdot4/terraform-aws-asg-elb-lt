resource "aws_autoscaling_group" "asg-team4" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity   = var.asg_desired_capacity
  max_size           = var.asg_max_size
  min_size           = var.asg_min_size
  name               = var.asg_name
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.lt-team4.id
      }
      override {
        instance_type     = var.asg_instance_type_1
        weighted_capacity = var.asg_weighted_capacity_1
      }
      override {
        instance_type     = var.asg_instance_type_2
        weighted_capacity = var.asg_weighted_capacity_2
      }
    }
  }
}