variable "alb_name" {
  description = "Application Load Balancer name"
  type        = string
}

variable "vpc_id" {
  description = "VPC where the ALB will be created"
  type        = string
}

variable "subnet_ids" {
  description = "Public subnet IDs"
  type        = list(string)
}

variable "security_group_id" {
  description = "ALB Security Group"
  type        = string
}

variable "instance_ids" {
  description = "EC2 instance IDs"
  type        = list(string)
}