variable "region" {
  type = string
}

variable "vpc-name" {
  type = string
}

variable "vpc-cidr" {
  type = string
}

variable "IGW-name" {
  type = string

}

variable "subnet_cidr_blocks" {
  type = list(string)
}

variable "subnet_tags" {
  type = list(string)
}

variable "ec2-securitygroups" {
  type = list(string)
}

variable "EC2-names" {
  type = list(string)
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}


