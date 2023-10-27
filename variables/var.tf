variable "sample" {
  default = "Mango"
}

output "sample2" {
  value = var.sample
}



###########list type variables
variable "list" {
  default =["AWS","DEVOPS","CLOUD"]
}

output "list_output" {
  value = var.list[2]
}