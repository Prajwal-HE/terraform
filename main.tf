module "ec2-instance" {
  source = "./modules/ec2instance"
  ami-id = "ami-053a45fff0a704a47"
  instance-type = "t2.micro"
}
 module "s3-bucket" {
   source = "./modules/aws_s3"
   s3-bucket-name = "backend-s3-bucket-for-terraform"
   dynamodb_lock_state = "dynamodb-lock-statefile"
 }
