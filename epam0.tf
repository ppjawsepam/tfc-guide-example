resource "aws_vpc" "vpc1" {
  region = "eu-central-1"
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc1"
  }
}

resource "aws_vpc" "vpc2" {
  cidr_block = "10.10.0.0/16"
  region = "eu-west-1"
  tags = {
    Name = "vpc2"
  }
}

