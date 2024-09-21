resource "aws_s3_bucket" "dev" {
  bucket = "naresh-devops-aws"
  
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.dev.id
  versioning_configuration {
    status = "Enabled"
  }
}
