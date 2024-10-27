variable "fruits" {

  default = {
    apple = {}
    banana = {}
    papaya = {}
    berry = {}
  }

}

resource "null_resource" "fruits" {
  for_each = var.fruits
}