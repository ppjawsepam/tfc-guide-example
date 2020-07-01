resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc1"
  }
 } 
 
resource "aws_vpc" "vpc2" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "vpc2"
  }
}

resource aws_instance "bastion" {
  instance_type = "t2.micro"
  ami = "ami-0d359437d1756caa8"
  tags = {
    Name = "bastion" 
    }
  }
