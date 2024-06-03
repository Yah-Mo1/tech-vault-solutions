resource "aws_vpc" "this" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "public" {
    //The count parameter determines the number of subnets to create. It is set to the number of available availability zones.
  count = length(data.aws_availability_zones.available.names)

  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(aws_vpc.this.cidr_block, 8, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.index]
}

data "aws_availability_zones" "available" {}

