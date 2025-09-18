variable "ec2_instance_type" {
  default = "t2.small"
}

variable "key_pair_name" {
  default = "lab01" # keypair anh đã tạo sẵn trên AWS
}

variable "subnet_id" {
  default = "subnet-0fc5b25b69cda805b" # default subnet
}

variable "vpc_id" {
  default = "vpc-058560326cf019d75"
}

variable "aws_region" {
  default = "ap-southeast-1" # Singapore 
}

variable "aws_profile" {
  default = "default"
}

