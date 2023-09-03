resource "aws_subnet" "subnet" {
  count      = length(var.subnet_cidr_blocks)
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet_cidr_blocks[count.index]
  tags = {
    Name = var.subnet_tags[count.index]
  }

}
