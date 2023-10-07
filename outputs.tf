output "vpc_us_east_1_id" {
    description = "ID of the us-east-1 VPC"
    value = aws_vpc.vpc_us_east_1.id
}

output "vpc_us_west_2_id" {
    description = "ID of the us-west-2 VPC"
    value = aws_vpc.vpc_us_west_2.id
}