# ami=ami-0b4f379183e5706b9
# instance_type=t2.micro

variable "ami_id" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-0b4f379183e5706b9" # devops-practice which is cenots8

}


variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"

}
variable "sg_name" {
  default = "tf-sg"

}
variable "sg_cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map(any)
  default = {
    Name      = "MongoDB"
    Env       = "dev"
    Terraform = "true"
    Project   = "Roboshop"
    Componet  = "MongoDB"
  }

}
