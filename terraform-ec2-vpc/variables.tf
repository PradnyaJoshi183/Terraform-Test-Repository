variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.2.0.0/16"
}

variable "subnet_cidr" {
  default = "10.2.0.0/24"
}

variable "ami_id" {
  default = "ami-087d1c9a513324697"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "ec2-ubuntukp"
}
