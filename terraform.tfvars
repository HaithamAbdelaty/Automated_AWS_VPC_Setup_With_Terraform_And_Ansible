region             = "us-east-1"
vpc-name           = "my-vpc"
vpc-cidr           = "10.0.0.0/16"
IGW-name           = "My-IGW"
subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
subnet_tags        = ["private", "public"]
EC2-names          = ["private-instance", "public-instance"]
ec2-securitygroups = ["private-securitygroup", "public-securitygroup"]
ami                = "ami-01c647eace872fc02"
instance_type      = "t2.micro"
//subnet_id_list=[]

