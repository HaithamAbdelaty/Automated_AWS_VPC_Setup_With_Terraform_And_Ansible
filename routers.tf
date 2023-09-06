resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name ="route_Table-1"

  }
}

resource "aws_route" "aws-route" {
  route_table_id            = aws_route_table.route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my_igw.id
}
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet[1].id
  route_table_id = aws_route_table.route_table.id
}

