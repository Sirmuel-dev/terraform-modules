resource "aws_instance" "server" {


  ami = var.ami_id


  instance_type = var.instance_type


  subnet_id = var.subnet_id


  vpc_security_group_ids = [

    var.security_group_id

  ]


  key_name = var.key_name



  associate_public_ip_address = true



  tags = {


    Name = var.server_name


  }


}

resource "aws_security_group" "ec2" {

  name = "studymove-${var.environment}-ec2-sg"

  description = "EC2 Security Group"

  vpc_id = var.vpc_id

  ingress {

    from_port = 22

    to_port = 22

    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {

    from_port = 80

    to_port = 80

    protocol = "tcp"

    security_groups = [

      aws_security_group.alb.id

    ]

  }

  egress {

    from_port = 0

    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

}