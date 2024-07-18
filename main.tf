# main.tf

# Define required providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

# Configure the AWS provider
provider "aws" {
  region     = "us-east-1"  # Specify your desired AWS region
  access_key = "enter_access_key_here"  # Enter AWS IAM access key
  secret_key = "enter_secret_key_here"  # Enter AWS IAM secret key
}

# Create an ECR repository
resource "aws_ecr_repository" "app_ecr_repo" {
  name = "app-repo"
}
