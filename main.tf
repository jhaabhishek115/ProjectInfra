# Provider Configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  access_key = 
  secret_key = 
  region     = "us-east-1"
}


# Creating 1st EC2 instance in public subnet
resource "aws_instance" "web_server" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "project"
  vpc_security_group_ids      = ["${aws_security_group.web_sg.id}"]
  associate_public_ip_address = true

  tags = {
    "Name" = "Web Server"
  }
}