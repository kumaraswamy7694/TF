resource "aws_security_group" "tf-sg" {
  name        = var.sg_name
  description = "allowing all ports"
  ingress {
    description = "allowing all security ports"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.sg_cidr
  }

  tags = {
    Name = "allow_tls"
  }

}
