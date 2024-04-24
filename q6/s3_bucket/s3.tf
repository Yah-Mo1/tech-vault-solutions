resource "aws_s3_bucket" "tf-test-bucket-yahya" {
  bucket = "tf-test-bucket-yahya"
}

resource "aws_s3_bucket_versioning" "s3-versioning" {
  bucket = aws_s3_bucket.tf-test-bucket-yahya.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.tf-test-bucket-yahya.id
  key    = "new_object_key"
  source = "${path.module}/index.html"
}
