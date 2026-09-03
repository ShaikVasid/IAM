terraform {
  backend "s3" {
    bucket         = "vasid-terraform-state-bucket" # match terraform-iam's backend
    key            = "website-pipeline/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}