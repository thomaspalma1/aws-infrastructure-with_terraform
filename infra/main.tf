terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "first_aws_instance_with_terraform" {
  ami           = "ami-050352a65e954abb1"
  instance_type = "t3.micro"

  tags = {
    Name = "AWS-Instance"
  }
}
