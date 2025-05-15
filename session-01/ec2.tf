resource "aws_instance" "my-wish" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.tf-sg.name]

  #   tags = {
  #     Name      = "MongoDB"
  #     Env       = "dev"
  #     Terraform = "true"
  #     Project   = "Roboshop"
  #     Componet  = "MongoDB"
  #   }
  tags = var.tags

}
