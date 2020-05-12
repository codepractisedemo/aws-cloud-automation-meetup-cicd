resource "aws_instance" "public2" {
  ami = var.ami_id
  instance_type = "t2.micro"

  # this is optional, but needed if you want to ssh into your ec2 instance
  # here I have manually created a key pair in the console and I'm supplying the
  # name.
  key_name = "ha_webserver"

  user_data = file(var.user_data)

  vpc_security_group_ids = [
    aws_security_group.this.id]

  subnet_id = var.public_subnet2_id

  tags = {
    Name = var.project
    Project = var.project
  }
}