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
  default = "Z06532627HTOWBBNRCTT"

}

variable "domain" {
  default = "kumaraswamy.shop"
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]

}
