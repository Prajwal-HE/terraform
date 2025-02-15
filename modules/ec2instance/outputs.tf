output "public_ip" {
  value = aws_instance.ec2-terraform.public_ip
}

output "private_ip" {
  value = aws_instance.ec2-terraform.private_ip
}