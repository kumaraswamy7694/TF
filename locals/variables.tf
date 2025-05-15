# variable "instance_name" {
#   default = "MongoDB" # devops-practice which is cenots8

# }
# variable "ami_id" {
#   description = "The AMI to use for the instance"
#   type        = string
#   default     = "ami-0b4f379183e5706b9" # devops-practice which is cenots8

# }
variable "instance_name" {
  type    = list(any)
  default = ["MongoDB", "Cart", "Catalogue", "User", "Redis", "RabbitMQ", "MySQL", "Web", "Payment", "Shipping"]
}

variable "zone_id" {
  default = "Z0346983Y0YTGPPJXNDE"

}

variable "domain" {
  default = "kumaraswamy.shop"

}
variable "isPROD" {
  default = false

}
