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






# variable "subnets-name"{
#     type= list 
# }





