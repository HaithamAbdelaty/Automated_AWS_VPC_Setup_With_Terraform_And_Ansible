resource "aws_security_group" "private-security-group" {
  name        = var.ec2-securitygroups[0]
  description = "Security group for the private ec2"
  vpc_id      = aws_vpc.my_vpc.id # Replace with your VPC ID

  # Inbound rules (allow incoming traffic)
  ingress {
    from_port   = 22 # SSH port
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_subnet.subnet[1].cidr_block]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # All traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_security_group" "public-security-group" {
  name        = var.ec2-securitygroups[1]
  description = "Security group for the public ec2"
  vpc_id      = aws_vpc.my_vpc.id

  # Inbound rules (allow incoming traffic)
  ingress {
    from_port   = 22 # SSH port
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open SSH access to the world (be cautious with this)
  }

  ingress {
    from_port   = 443 # HTTPS port
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allowing HTTPS traffic from anywhere
  }


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # All traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}