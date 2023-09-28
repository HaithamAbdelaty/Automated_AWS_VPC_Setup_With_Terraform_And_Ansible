resource "aws_instance" "example" {
  for_each = toset(subnet_cidr_blocks)

  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet[each.key]
  security_groups ={
    aws_security_group.ec2-securitygroups[each.key].id
    }
  key_name      = "testing.pem"  # Replace with your key pair

  tags = {
    Name = each.value.instance_name
  }
}
