variable "environment" {}

variable "vpc_cidr" {}

variable "public_subnet_cidr" {}

variable "subnet_ids" {
  type = list(string)
}

variable "availability_zone" {}

variable "ami_id" {}

variable "instance_type" {}

variable "key_name" {}

variable "server_name" {}

variable "security_group_id" {}

variable "instance_count" {
  type = number

  default = 2
}