resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc1"
  }
 } 
 
resource "aws_security_group" "SG1" {
  name        = "SecuGrp1"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-02171481185a55f3a"

  ingress {
    description = "SSH from VPC"
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
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
  ami = "ami-173c6d52"
  tags = {
    Name = "bastion" 
    }
  }
