module "vpc" {

  source = "../../modules/vpc"

  environment = var.environment

  vpc_cidr = var.vpc_cidr

  public_subnet_1_cidr = var.public_subnet_1_cidr

  public_subnet_2_cidr = var.public_subnet_2_cidr

  availability_zone_1 = var.availability_zone_1

  availability_zone_2 = var.availability_zone_2

}



module "security_group" {

  source = "../../modules/security-group"

  environment = var.environment

  vpc_id = module.vpc.vpc_id

}



module "alb" {

  source = "../../modules/ALB"

  environment = var.environment

  alb_name = "studymove-${var.environment}-alb"


  vpc_id = module.vpc.vpc_id


  subnet_ids = module.vpc.public_subnet_ids


  security_group_id = module.security_group.alb_security_group_id

}



module "autoscaling" {

  source = "../../modules/autoscaling"


  environment = var.environment


  ami_id = var.ami_id


  instance_type = var.instance_type


  key_name = var.key_name


  security_group_id = module.security_group.web_security_group_id


  subnet_ids = module.vpc.public_subnet_ids


  target_group_arn = module.alb.target_group_arn


  min_size = 2


  desired_capacity = 2


  max_size = 5

}