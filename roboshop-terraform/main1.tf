terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}
resource "aws_instance" "tf1" {
  ami           = "t2R2bJ#Shyzx"
  instance_type = "t3.small"
}