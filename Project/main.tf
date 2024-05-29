provider "aws" {
  region = "ap-south-1"
  }

  resource "aws_instance" "example" {
    ami = "ami-00fa32593b478ad6e"
    instance_type = "t2.micro"
    }

