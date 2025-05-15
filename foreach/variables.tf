# variable "instance_name" {
#   default = "MongoDB" # devops-practice which is cenots8

# }
variable "ami_id" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-0b4f379183e5706b9" # devops-practice which is cenots8

}
variable "instances" {
  type = map(any)
  default = {
    MongoDB   = "t3.medium"
    Cart      = "t2.micro"
    Catalogue = "t2.micro"
    User      = "t2.micro"
    Redis     = "t2.micro"
    RabbitMQ  = "t2.micro"
    MySQL     = "t3.medium"
    Web       = "t2.micro"
    Payment   = "t2.micro"
    Shipping  = "t2.micro"
  }
}


variable "zone_id" {
  default = "Z09916302493ETODPE7QU"

}

variable "domain" {
  default = "kumaraswamy.shop"
}
variable "ingress" {
  type = list(any)
  default = [
    {
      from_port   = 80
      to_port     = 80
      description = "allowing PORT 80 from public"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 443
      to_port     = 443
      description = "allowing PORT 443 from public"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 22
      to_port     = 22
      description = "allowing PORT 22 from public"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
