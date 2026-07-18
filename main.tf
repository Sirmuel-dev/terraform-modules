module "web_server" {

  source = "./modules/ec2"

  ami_id = data.aws_ami.amazon_linux.id

  instance_type = "t3.micro"

  instance_name = "web-server"

}

module "app_server" {
  source = "./modules/ec2"

  ami_id = data.aws_ami.amazon_linux.id

  instance_type = "t3.micro"

  instance_name = "app-server"
}


module "db_server" {
  source = "./modules/ec2"

  ami_id = data.aws_ami.amazon_linux.id

  instance_type = "t3.micro"

  instance_name = "db-server"
}