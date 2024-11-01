terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

resource "aws_instance" "Frontend" {
  ami           = "data.aws_ami.datasource.image_id"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0752c4aa18bebd1ed"]
  tags = {
    Name= "Datasource"
  }
}

data "aws_ami" "datasource" {
  most_recent      = true
  name_regex       = "^myami-[0-9]{3}"
  owners           = ["self"]

}