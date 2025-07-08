# 2) Create your Security Group in that VPC

resource "aws_security_group" "ec2_sg" {
  name        = var.sg_name
  description = "Custom SG for ${var.ec2_instance_name}"
  vpc_id      = data.aws_vpc.default.id

  # Ingress rules
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]       # open to the world – tighten as needed
  }

  # ingress {
  #   description      = "HTTP"
  #   from_port        = 80
  #   to_port          = 80
  #   protocol         = "tcp"
  #   cidr_blocks      = ["0.0.0.0/0"]
  # }

  # Egress: allow all outbound by default
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
    env  = var.ec2_environment
  }
}