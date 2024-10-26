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