instances = {
  MongoDB-PROD   = "t3.medium"
  Cart-PROD      = "t2.micro"
  Catalogue-PROD = "t2.micro"
  User-PROD      = "t2.micro"
  Redis-PROD     = "t3.large"
  RabbitMQ-PROD  = "t2.micro"
  MySQL-PROD     = "t3.medium"
  Web-PROD       = "t3.large"
  Payment-PROD   = "t2.micro"
  Shipping-PROD  = "t2.micro"
}

sg_name = "allow_all-prod"
