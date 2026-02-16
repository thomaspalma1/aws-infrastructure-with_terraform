resource "aws_instance" "dynamic_ports" {
  ami                    = "ami-050352a65e954abb1"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg_webserver.id]

  tags = {
    Name = "Dynamic-Ports-Lab"
  }
}

locals {
  inbound_ports  = [80, 443]
  outbound_ports = [443, 1433]
}

resource "aws_security_group" "sg_webserver" {
  name        = "webserver-sg"
  description = "Security Group for Web Servers"

  dynamic "ingress" {
    for_each = local.inbound_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = local.outbound_ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
