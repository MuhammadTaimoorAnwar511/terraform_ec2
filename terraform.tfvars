# EC2 VARIABLES
ec2_region           = "us-east-1"
ec2_instance_name    = "ec2_A"
ec2_ami              = "ami-020cba7c55df1f615" #Ubunut 24.04 default
ec2_type             = "t2.micro"
ec2_key_name         = "Practise-ec2-key"      #your pem key name
ec2_user_data        = "user-data.sh"          #script
ec2_vol_type         = "gp3"                   #default
ec2_vol_size         =  8                      #default
ec2_vol_iops         =  3000                   #default
ec2_vol_delete_on_termination = true           #default
ec2_vol_encrypted    = false                   #default
ec2_environment      = "dev"
# SG VARIABLES
sg_name              = "ec2_A-sg"          