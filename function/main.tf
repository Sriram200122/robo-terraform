############To print in capital letters###########
variable "sa" {
  default = "apple"
}
output "s1" {
  value = upper(var.sa)
}

##################ceil value#########
output "s2" {
  value = ceil(5.1)
}

##########minimum value###########
output "s3" {
  value = min(12,68,9)
}

##########Number of items in list#######
variable "list" {
  default = ["apple","banana"]
}
output "s4" {
  value = length(var.list)
}

#############it loops and answer is banana ##########
output "s5" {
  value = element(var.list,3)
}

########### plain type variable declaration ##########
variable "class" {
  default = "devops"
}

###### print the same in Capital Letters ######
output "class" {
  value = upper(var.class)
}

########################################################################################################################################
######## List type declaration ###########
variable "courses" {
  default = ["Devops", "Jenkins"]
}

###### print the count of list - No of items in the list##########
output "courses_list" {
  value = length(var.courses)
}

output "courses_lists" {
  value = element(var.courses, 3) ####### 3 will itterate the list and answer is jenkins
}

#########################################################################################################################################
######### map type declaration #########
variable "course" {
  default = {
    Devops = {
      topics = ["Devops","Jenkins"]
      Duration = "90days"
    }
    AWS = {
      topics = "cloud"
    }
  }
}

######## To print the map output ###########
output "course_name" {
  value = var.course["Devops"]["topics"]
}

####### To lookup whether value is there or not #########
output "course_lookup" {
  value = lookup(var.course, "AWS", null)
}

####### To lookup whether value is there or not #########
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