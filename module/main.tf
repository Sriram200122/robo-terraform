module "s1" {
  source = "./ec2"
  name   = "frontend"
}

module "s2" {
  source = "./ec2"
  name   = "mongodb"
}