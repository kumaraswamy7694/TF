locals {
  ami_id        = "ami-0b4f379183e5706b9" # devops-practice which is cenots8
  public_key    = file("${path.module}/devops.pub")
  instance_type = var.isPROD ? "t3.medium" : "t2.micro"
}
