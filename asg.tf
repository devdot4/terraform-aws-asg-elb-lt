resource "aws_autoscaling_group" "example" {
  availability_zones = var.asg_availability_zones
  desired_capacity   = var.asg_desired_capacity
  max_size           = var.asg_max_size
  min_size           = var.asg_min_size
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.example.id
      }
      override {
        instance_type     = var.mixed_instances_instance_type
        weighted_capacity = var.mixed_instances_weighted_capacity
      }
      # override {
      #   instance_type = var.mixed_instances_instance_type2
      #   launch_template_specification {
      #     launch_template_id = aws_launch_template.example2.id
      #   }
      #   weighted_capacity = var.mixed_instances_weighted_capacity2
      # }
    }
  }
}