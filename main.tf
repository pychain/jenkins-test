resource "aws_s3_bucket" "s3" {
  bucket = "jenks-test-s3-buck-1"
  acl    = "private"
}
