terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
resource "null_resource" "test1" {}
resource "null_resource" "test2" {}
resource "null_resource" "test3" {}