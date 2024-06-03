terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }


 backend "s3" {
    bucket         	   = "s3statefilebucket"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-east-1"
    encrypt        	   = true
    dynamodb_table = "dynamodbstatefile"
  }
}
provider "aws" {
  # Configuration options
  region =  "us-east-1"
  access_key = ""
  secret_key = ""

}

