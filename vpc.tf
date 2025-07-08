# 1) Fetch the Default VPC

data "aws_vpc" "default" {
  default = true
}
