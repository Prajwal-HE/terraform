resource "aws_instance" "ec2-terraform" {
  ami = var.ami-id
  instance_type = var.instance-type
}