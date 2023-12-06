###########plain type variables
variable "plain" {
  default = "Mango"
}

output "plain_output" {
  value = var.plain
}



###########list type variables
variable "list" {
  default =["AWS","CLOUD","DEVOPS"]
}

output "list_output" {
  value = var.list[0]
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
  value = var.map["AWS"]
}
