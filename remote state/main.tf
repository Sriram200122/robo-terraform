terraform {
  backend "s3" {
    bucket = "srirambucketterraform"
    key = "sriram/sample"
    region = "us-east-1"
  }
}
output "sample" {
  value = "Grapes is a fruit"
}
