variable "ami_id" {
  description = "The AMI ID"
  type        = string
  default = "ami-0bb84b8ffd87024d8"
}

variable "instance_type" {
  description = "The instance type"
  type        = string
  default = "t3.micro"
}

variable "subnet_ids" {
  description = "The subnet IDs"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}


variable "name" {
  description = "The name of the instance"
  type        = string
  default = "aws-security-group"
}
