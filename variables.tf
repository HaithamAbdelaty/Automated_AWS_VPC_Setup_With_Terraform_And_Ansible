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
variable "ec2-securitygroups"{ 
  type=list(string)
}

variable "EC2-names" {
  type = list(string)
}

variable "ami" {
  type    = string
}

variable "instance_type_list" {
  type    = string
}

# variable "subnet_id_list" {
#   type    = list(object)
# }

# variable "key_name_list" {
#   type    = string
#   default = ["my-keypair", "my-keypair"]
# }



