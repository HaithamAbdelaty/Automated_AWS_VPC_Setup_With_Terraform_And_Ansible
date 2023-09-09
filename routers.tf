resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "public_route_Table"

  }
}

resource "aws_route" "aws-route-public" {
  route_table_id         = aws_route_table.route_table_public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my_igw.id
}
resource "aws_route_table_association" "aws_route_table_public_association" {
  subnet_id      = aws_subnet.subnet[1].id
  route_table_id = aws_route_table.route_table_public.id
}

#---------------------------------private subnet router
resource "aws_route_table" "route_table_private" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "private_route_Table"

  }
}
resource "aws_route" "aws-route-local" {
  route_table_id         = aws_route_table.route_table_private.id
 destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.my_nat_gateway.id

}
resource "aws_route_table_association" "aws_route_table_private_association" {
  subnet_id      = aws_subnet.subnet[0].id
  route_table_id = aws_route_table.route_table_private.id
}

