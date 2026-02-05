provider "aws" {
  region = "us-east-2"

}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

}

module "webserver_thomas" {
  source         = "../webserver"
  vpc_id         = aws_vpc.main.id
  cidr_block     = "10.0.0.0/16"
  ami            = "ami-050352a65e954abb1"
  instance_type  = "t3.micro"
  webserver_name = "Thomas"
}
