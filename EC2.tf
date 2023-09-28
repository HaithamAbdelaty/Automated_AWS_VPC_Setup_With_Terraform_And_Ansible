resource "aws_instance" "example" {
  for_each = var.subnet_cidr_blocks

  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet[each.index]
  #security_groups = [aws_security_group.example.id]
  key_name      = "testing.pem"  # Replace with your key pair

  tags = {
    Name = each.value.instance_name
  }
}
