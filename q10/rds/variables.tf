variable "allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
  default = 10
}

variable "engine" {
  description = "The database engine"
  type        = string
  default = "mysql"
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default = "5.7"
}

variable "instance_class" {
  description = "The instance class"
  type        = string
  default = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default = "db-name"
}

variable "username" {
  description = "The username for the database"
  type        = string
  default = "rdsDatabase"
}

variable "password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
  default = "database123"
}

variable "subnet_ids" {
  description = "The subnet IDs"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "rds_name" {
  description = "The name of the RDS subnet group"
  type        = string
  default = "rds-subnetgroup-instance1"
}
variable "security_group_name" {
  description = "The name of the aws security group"
  type = string
  default = "rds-security-group"
  
}