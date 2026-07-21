module "vpc" {


  source = "../../modules/vpc"


  environment = var.environment

  vpc_cidr = var.vpc_cidr

  public_subnet_cidr = var.public_subnet_cidr

  availability_zone = var.availability_zone


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


  subnet_id = module.vpc.subnet_id


  security_group_id = module.security_group.security_group_id


  key_name = var.key_name


  server_name = var.server_name


}