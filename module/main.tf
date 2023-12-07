module "s1" {
  source = "./ec2"
  name   = "frontend"
}

module "s2" {
  source = "./ec2"
  name   = "mongodb"
}

module "s3" {
  source = "./ec2"
  name   = "catalogue"
}


