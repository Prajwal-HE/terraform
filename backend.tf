terraform {
  backend "s3" {
    bucket = "backend-s3-bucket-for-terraform"
    region = "us-east-1"
    key = "keys/terraform.tfstate"
    dynamodb_table = "dynamodb-lock-statefile"
  }
}