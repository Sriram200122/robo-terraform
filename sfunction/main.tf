variable "course" {
  default = {
    Devops = {
      topics = ["Devops","Jenkins"]
      Duration = "90 days"
    }
    AWS = {
      topics = "cloud"
    }
  }
}

############ To print the map output ##########
output "course_name" {
  value = var.course["Devops"]["topics"]
}

######### To lookup whether value is there or not ######3
output "course_lookup" {
  value = lookup(var.course, "AWS", null)
}

######### To lookup whether value is there or not ######3
output "course_lookup1" {
  value = lookup(lookup(var.course, "AWS", null), "Duration","Duration not announced")
}

################ Merging of two functions ############################
variable "name" {
  default = {
    fruit_name = "apple"
  }
}

variable "details" {
  default = {
    quantity = 100
    rating = 3.4
  }
}

output "fruit" {
  value = merge(var.name, var.details)
}