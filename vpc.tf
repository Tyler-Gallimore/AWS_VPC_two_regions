resource "aws_vpc" "vpc_us_east_1" {
    provider = aws
    cidr_block = "10.0.0.0/16"
    
    tags = {
        Name = "us-east-1 VPC"
    }
}

resource "aws_subnet" "us_east_subnet" {
    count = 2
    vpc_id = aws_vpc.vpc_us_east_1.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name = "us-east-subnet-${count.index + 1}"
    }
}

resource "aws_vpc" "vpc_us_west_2" {
    provider = aws.us_west
    cidr_block = "10.1.0.0/16"

    tags = {
        Name = "us-west-2 VPC"
    }
}

resource "aws_subnet" "us_west_subnet" {
    count = 2
    vpc_id = aws_vpc.vpc_us_west_2.id
    cidr_block = "10.1.1.0/24"
    availability_zone = "us-west-2a"

    tags = {
        Name = "us-west-subnet-${count.index + 1}"
    }
}
