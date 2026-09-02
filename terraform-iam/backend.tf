terraform {
  backend "s3" {
    bucket         = "vasid-terraform-state-bucket" # change to your actual state bucket name
    key            = "iam/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}