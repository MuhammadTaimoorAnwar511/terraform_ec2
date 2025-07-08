output "ec2_instance_public_ip" {
  description = "The public IPv4 address of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}
