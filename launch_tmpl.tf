resource "aws_launch_template" "example" {
  name_prefix   = var.launch_template_name_prefix
  image_id      = data.aws_ami.example.id
  instance_type = var.launch_template_instance_type
}
# resource "aws_launch_template" "example2" {
#   name_prefix = var.launch_template_name_prefix2
#   image_id    = data.aws_ami.example.id
# }