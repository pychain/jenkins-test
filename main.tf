resource "aws_s3_bucket" "new" {
  bucket = "aws-waf-logs-jen"
  acl    = "private"
}
