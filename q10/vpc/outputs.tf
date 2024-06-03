output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.public[*].id
}


output "cidr_block" {
  description = "The CIDR Block of the VPC"
  value = aws_vpc.this.cidr_block
  
}