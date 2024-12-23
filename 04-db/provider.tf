terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.62.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0"
    }
  }

  backend "s3" {
    bucket = "expense-prajai-bucket-dev"
    key    = "expense-terraform-db-dev"
    region = "us-east-1"
    dynamodb_table = "prajai-locking-table-dev"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}