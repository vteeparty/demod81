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
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "Frontend"
  }
}

resource "aws_route53_record" "Frontend" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "Frontend-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.Frontend.private_ip]
}

resource "aws_instance" "MongoDb" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name="MongoDb"
  }
}

resource "aws_route53_record" "MongoDb" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "MongoDb-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.MongoDb.private_ip]
}


resource "aws_instance" "Catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "Catalogue"
  }
}


resource "aws_route53_record" "Catalogue" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "Catalogue-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.Catalogue.private_ip]
}

resource "aws_instance" "User" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "User"
  }
}

resource "aws_route53_record" "User" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "User-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.User.private_ip]
}


resource "aws_instance" "Redis" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "Redis"
  }
}


resource "aws_route53_record" "Redis" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "Redis-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.Redis.private_ip]
}

resource "aws_instance" "MySQL" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "MySQL"
  }
}

resource "aws_route53_record" "MySQL" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "MySQL-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.MySQL.private_ip]
}

resource "aws_instance" "Shipping" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "Shipping"
  }
}

resource "aws_route53_record" "Shipping" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "Shipping-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.Shipping.private_ip]
}


resource "aws_instance" "RabbitMQ" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "RabbiitMQ"
  }
}

resource "aws_route53_record" "RabbitMQ" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "RabbitMQ-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.RabbitMQ.private_ip]
}


resource "aws_instance" "Payment" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "Payment"
  }
}


resource "aws_route53_record" "Frontend" {
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "Payment-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.Payment.private_ip]
}
