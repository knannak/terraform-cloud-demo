resource "aws_instance" "myec2_linux" {
  ami             = data.aws_ami.amzlinx.id
  instance_type   = var.aws_instance_type
  security_groups = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  key_name        = "terraform_key_useast1"
  user_data       = file("apache-install.sh")
  tags = {
    "Name" = "MyEC2_Instance"
  }
}
