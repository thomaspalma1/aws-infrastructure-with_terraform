terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.50"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region     = "us-east-2"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

resource "aws_instance" "aws_instance_with_terraform_env_variables" {
  ami           = "ami-050352a65e954abb1"
  instance_type = "t3.micro"

  tags = {
    Name = "AWS-Instance-Variables-Are-Fun!"
  }
}
