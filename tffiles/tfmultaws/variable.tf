#varaible for region
variable "aws_region" {
  description = "AWS region where resources will be set up"
  default     = "us-east-2"
}

#variable for ami id
variable "ami_id" {
  description = "AMI ID for the instance"
  default     = "ami-085f9c64a9b75eed5"
}

#variable for instance type
variable "instance_type" {
  description = "type of instance"
  default     = "t2.micro"
}

#variable for environment
variable "environment" {
  default = "dev"
}