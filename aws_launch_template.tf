resource "aws_launch_template" "aws_lt" {
  # image_id               = data.aws_ami.image.id
  image_id               = var.aws_lt_image_id
  name                   = var.aws_lt_name
  instance_type          = var.aws_lt_instance_type
  key_name               = aws_key_pair.aws_kp.key_name
  vpc_security_group_ids = [aws_security_group.aws_sg.id]
  user_data              = filebase64("${path.module}/user-data.sh")
  tags                   = var.aws_tags
}
resource "aws_key_pair" "aws_kp" {
  key_name   = var.aws_kp_name
  public_key = file(var.aws_kp_path)
  tags       = var.aws_tags
}