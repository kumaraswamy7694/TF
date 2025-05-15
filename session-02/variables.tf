variable "instance_name" {
  default = "MongoDB" # devops-practice which is cenots8

}
variable "ami_id" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-0b4f379183e5706b9" # devops-practice which is cenots8

}
