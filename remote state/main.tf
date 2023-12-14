terraform {
  backend "s3" {
    bucket = "srirambucket-terraform"
    key = "sriram/sample"
    region = "us-east-1"
  }
}
output "sample" {
  value = "Banana is a fruit"
}