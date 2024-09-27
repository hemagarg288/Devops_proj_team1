terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}

provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "myawsserver" {
  ami = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  vpc_security_group_ids= [aws_security_group.var_demo.id]
  key_name = "hema-key"

  tags = {
    Name = "hema-DevOps-batch-server"
    env = "Production"
    owner = "hema"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /tmp/inv"
  }
}

