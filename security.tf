resource "aws_security_group" "var_demo" {
  name        = "Team1-SG"
  vpc_id      = "vpc-00dae5f3df962676d"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
#    cidr_blocks = [var.v_cidr_block]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
 #   cidr_blocks = [var.v_cidr_block]
  }

  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
  #  cidr_blocks = [var.v_cidr_block]
  }
}
