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


########### map type variables
variable "map" {
  default = {
    devops = {
      Time= "11AM"
      Duration= "100days"
    }
    AWS={
      Time= "12AM"
      Duration= "40days"
    }
  }
}

output "map_output" {
  value = var.map
}