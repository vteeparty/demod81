terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}
resource "aws_instance" "tf1" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
}