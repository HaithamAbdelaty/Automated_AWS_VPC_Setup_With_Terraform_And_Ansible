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

# variable "EC2-names" {
#   type = list(string)
# }

# variable "ami_list" {
#   type    = string
# }

# variable "instance_type_list" {
#   type    = string
# }

# variable "subnet_id_list" {
#   type    = list(string)
#   default = ["subnet-0123456789abcdef0", "subnet-0123456789abcdef1"]
# }

# variable "key_name_list" {
#   type    = list(string)
#   default = ["my-keypair", "my-keypair"]
# }

# variable "security_groups_list" {
#   type    = list(list(string))
#   default = [["sg-0123456789abcdef0"], ["sg-0123456789abcdef1"]]
# }


