resource "aws_security_group" "web" {


  name = "studymove-${var.environment}-web-sg"


  description = "EC2 Web Server Security Group"


  vpc_id = var.vpc_id



  # SSH Access

  ingress {


    from_port = 22

    to_port = 22

    protocol = "tcp"


    cidr_blocks = ["0.0.0.0/0"]


  }



  # HTTP only from ALB

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



  tags = {


    Name = "studymove-${var.environment}-web-sg"


  }


}





resource "aws_security_group" "alb" {


  name = "studymove-${var.environment}-alb-sg"


  description = "Application Load Balancer Security Group"


  vpc_id = var.vpc_id



  ingress {


    from_port = 80

    to_port = 80

    protocol = "tcp"


    cidr_blocks = ["0.0.0.0/0"]


  }



  egress {


    from_port = 0

    to_port = 0

    protocol = "-1"


    cidr_blocks = ["0.0.0.0/0"]


  }


}