# resource "aws_instance" "conditions" {
#   count = 10
#   ami   = local.ami_id
#   instance_type = (
#     var.instance_name[count.index] == "MongoDB" ||
#     var.instance_name[count.index] == "MySQL"
#   ) ? "t3.medium" : "t2.micro"

#   tags = {
#     Name = var.instance_name[count.index]
#   }
# }


# # ## we have 10 instances to create.
# resource "aws_route53_record" "record" {
#   count   = 10
#   zone_id = var.zone_id
#   name    = "${var.instance_name[count.index]}.${var.domain}" ##interpolation
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.conditions[count.index].private_ip]
# }


resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = local.public_key
}

resource "aws_instance" "file-function" {

  ami           = local.ami_id
  instance_type = local.instance_type
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    default = "delete-me"
  }

}
