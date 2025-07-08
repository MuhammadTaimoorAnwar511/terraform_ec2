#EC2 Variables
variable "ec2_region" {
  description = "name of region"
  default = "us-east-1"
  type = string
}
variable "ec2_instance_name" {
  description = "name of ec2_instance"
  default = "ec2_a"
  type = string
}
variable "ec2_ami" {
  description = "ami of ec2_instance"
  default = "ami-020cba7c55df1f615"
  type = string
}
variable "ec2_type" {
  description = "type of ec2_instance"
  default = "t2.micro"
  type = string
}
variable "ec2_vol_type" {
  description = "volume type of ec2_instance"
  default = "gp3"
  type = string
}
variable "ec2_vol_size" {
  description = "volume size of ec2_instance"
  default = 8
  type = number
}
variable "ec2_vol_iops" {
  description = "IOPS for gp3/io1/io2 volumes"
  default     = 3000
  type        = number
}
variable "ec2_vol_delete_on_termination" {
  description = "delete ec2 volume on termination"
  default     = true
  type        = bool
}
variable "ec2_vol_encrypted" {
  description = "encrypt ec2 volume on termination"
  default     = false
  type        = bool
}
variable "ec2_key_name" {
  description = "pem file for ec2_instance"
  default = "Practise-ec2-key"
  type = string
}
variable "ec2_user_data" {
  description = "user data script for ec2_instance"
  default = "user-data.sh"
  type = string
}
variable "ec2_environment" {
  description = "name of environment"
  default = "dev"
  type = string
}
# SECURITY GROUP VARIABLES
variable "sg_name" {
  description = "name of security group"
  default = "terraform-sg"
  type = string
}

