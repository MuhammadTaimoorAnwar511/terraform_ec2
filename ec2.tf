# 3) Launch your EC2 into the default VPC using that SG

resource "aws_instance" "ec2_instance" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_type
  key_name               = var.ec2_key_name
  user_data              = file(var.ec2_user_data)

  # Attach your custom SG
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  # ————————————————
  # Customize root volume
  root_block_device {
    volume_type           = var.ec2_vol_type     # general purpose SSD v3
    volume_size           = var.ec2_vol_size     # GiB
    iops                  = var.ec2_vol_iops                 # only needed for gp3/io1/io2
    delete_on_termination = var.ec2_vol_delete_on_termination
    encrypted             = var.ec2_vol_encrypted
  }

  # (optional) attach an additional 20 GiB gp2 volume:
  # ebs_block_device {
  #   device_name           = "/dev/sdf"
  #   volume_type           = "gp2"
  #   volume_size           = 20
  #   delete_on_termination = true
  # }

  tags = {
    Name = var.ec2_instance_name
    env  = var.ec2_environment
  }
}
