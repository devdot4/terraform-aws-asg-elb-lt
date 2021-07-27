resource "aws_launch_template" "lt_team4" {
  name_prefix   = "lt_team4"
  image_id      = data.aws_ami.image.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ssh-key.key_name
  user_data     = filebase64("${path.module}/user-data.sh")
}
resource "aws_key_pair" "ssh-key" {
  key_name   = var.key_name
  public_key = file(var.key_location)
}