variable "URL" {

  default = "roboshop.icu"
}

##Access the Variable

output "URL" {
  value = var.URL
}

## Access the Variable in String we have to use ${}

output "URL1" {
  value = "URL - ${var.URL}"
}

##Data Types

variable "num1" {
  default = 10
}

variable "boolean1" {
  default = true
}
variable "str1" {
  default = "hello"
}

##Variable types

variable "str2" {
  default = "world"
}


variable "list1" {
  default = [
  10,
  22,
  "love",
  false,
  ]
}

##Variable list can be combination of multiple data types

variable "map1" {
  default = {
    aws= {
      trainer="pavan"
      course="AWS"
      duration=30
    }
    devops={
      trainer="kala"
      course="Azure"
      duration=10
    }
  }
}


##getting output from the list and map

output "list1_1" {
  value = var.list1[2]
}

output "course_info_map1" {
  value = var.map1["aws"]["trainer"]
}

output "duration_info_map1" {
  value = var.map1["devops"]["course"]
}

##we can declare a empty variable from cli unlike ansible or bash we must declare a variable

variable "trainer_name" {}