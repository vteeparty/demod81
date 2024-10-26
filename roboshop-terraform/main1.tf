terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}
resource "aws_instance" "Frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= Frontend
  }
}

resource "aws_instance" "MongoDb" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name=MongoDb
  }
}

resource "aws_instance" "Catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= Catalogue
  }
}

resource "aws_instance" "User" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= User
  }
}

resource "aws_instance" "Redis" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= Redis
  }
}

resource "aws_instance" "MySQL" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= MySQL
  }
}

resource "aws_instance" "Shipping" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= Shipping
  }
}

resource "aws_instance" "RabbitMQ" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= RabbitMQ
  }
}

resource "aws_instance" "Payment" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = [sgr-08aefd24fe317e4fe]
  tags = {
    Name= Payment
  }
}
