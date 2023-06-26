resource "aws_vpc" "my_aws_vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "my_aws_vpc"

  }

}
resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.my_aws_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "public_subnet_1"
  }

}
resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.my_aws_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "public_subnet_2"
  }

}
resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.my_aws_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "private_subnet_1"
  }

}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = aws_vpc.my_aws_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1c"
  tags = {
    Name = "private_subnet_2"
  }


}
resource "aws_internet_gateway" "my_internet_gw" {
    vpc_id = aws_vpc.my_aws_vpc.id
    tags = {
      Name = "my_internet_gw"
    }
  
}
resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.my_aws_vpc.id
    tags = {
      Name = "public_route_table"
    }
}
 resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.my_aws_vpc.id
    tags = {
      Name = "private_route_table"

    }
   
 }
 resource "aws_route" "terraform_route" {
    route_table_id          = var.aws_route
    destination_cidr_block  = "0.0.0.0/0"
}
 