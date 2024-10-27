variable "instances" {
  default = [
  "frontend",
    "cart",
    "catalogue",
    "user",
    "shipping",
    "payment",
    "mysql",
    "mongodb",
    "rabbitmq",
    "redis"]
  }


resource "aws_instance" "instances" {
  count = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= var.instances[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z01431953SZW791DT7ETL"
  name    = "Frontend-dev.roboshop.icu"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instances[count.index].private_ip]
}
