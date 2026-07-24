variable "ami_id" {}

variable "instance_type" {}

variable "subnet_ids" {

  type = list(string)

}

variable "security_group_id" {}

variable "key_name" {}

variable "server_name" {}

variable "instance_count" {

  default = 2

}