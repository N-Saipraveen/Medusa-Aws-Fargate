terraform {
  backend "s3" {
    bucket         = "tfstate-medusa-devops-nsp"
    key            = "medusa/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = var.aws_region  
}
