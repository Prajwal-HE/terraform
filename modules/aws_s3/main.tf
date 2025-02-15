resource "aws_s3_bucket" "S3-Bucket-terraform" {
  bucket = var.s3-bucket-name
}
  
resource "aws_dynamodb_table" "dynamodb_lock_statefile" {
  name = var.dynamodb_lock_state
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}