variable "vpc_id" {
  type = string
}

variable "cidr_block" {
  type = string

}

variable "ami" {
  type        = string
  description = "AMI for the webserver instance"

}

variable "instance_type" {
  type = string
}

variable "webserver_name" {
  type = string
}
