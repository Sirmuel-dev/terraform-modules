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



module "ec2" {


source = "../../modules/ec2"


ami_id = var.ami_id


instance_type = var.instance_type


subnet_ids = [

    module.vpc.public_subnet_1_id,

    module.vpc.public_subnet_2_id

  ]


security_group_id = module.security_group.security_group_id


key_name = var.key_name


server_name = var.server_name


}

module "alb" {

  source = "../../modules/ALB"

  alb_name = "dev-alb"

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.public_subnet_ids

  security_group_id = module.security_group.alb_security_group_id

  instance_ids = module.ec2.instance_ids

}