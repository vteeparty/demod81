variable "URL" {

  default = "roboshop.icu"
}

##Access the Variable

output "URL" {
  value = var.URL
}