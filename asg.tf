resource "aws_autoscaling_group" "team4" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity   = var.asg_desired_capacity
  max_size           = var.asg_max_size
  min_size           = var.asg_min_size
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.team4_template.id
      }
      # override {
      #   instance_type     = "c4.large"
      #   weighted_capacity = "3"
      # }
      # override {
      #   instance_type     = "c3.large"
      #   weighted_capacity = "2"
      # }
    }
  }
}