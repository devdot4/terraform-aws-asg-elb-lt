resource "aws_launch_template" "lt-team4" {
  image_id      = data.aws_ami.image.id
  name          = var.aws_launch_template_name
  instance_type = var.aws_launch_template_instance_type
  key_name      = aws_key_pair.ssh-key.key_name
  user_data     = filebase64("${path.module}/user-data.sh")
  tags          = var.tags
}
resource "aws_key_pair" "ssh-key" {
  key_name   = var.key_name
  public_key = file(var.key_location)
  tags       = var.tags
}