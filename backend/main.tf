provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example1" {
  bucket = "demo-terraform-eks-bucket"
  lifecycle {
    prevent_destroy = false
  }
}


resource "aws_dynamodb_table" "basic_dynamodb_table" {
  name         = "demo-terraform-eks-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}


