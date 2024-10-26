terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.35.13"
    }
  }
}
resource "aws_instance" "tf1" {
  ami           = "t2R2bJ#Shyzx"
  instance_type = "t3.small"
}