variable "environment" {}

variable "vpc_cidr" {}

# VPC Subnets

variable "public_subnet_1_cidr" {}

variable "public_subnet_2_cidr" {}


variable "availability_zone_1" {}

variable "availability_zone_2" {}

variable "availability_zone" {}

#Variables

variable "ami_id" {}

variable "instance_type" {}

variable "key_name" {}

variable "server_name" {}

variable "security_group_id" {}

variable "instance_count" {
  type = number

  default = 2
}