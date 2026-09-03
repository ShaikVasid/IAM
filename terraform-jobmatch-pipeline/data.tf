# Pull IAM role ARNs from the terraform-iam folder's state
data "terraform_remote_state" "iam" {
  backend = "s3"
  config = {
    bucket = "vasid-terraform-state-bucket" # match terraform-iam's backend
    key    = "iam/terraform.tfstate"
    region = "us-east-1"
  }
}