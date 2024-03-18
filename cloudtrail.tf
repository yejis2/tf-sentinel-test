# Create an AWS CloudTrail trail
resource "aws_cloudtrail" "example_cloudtrail" {
  name                          = "example-cloudtrail"
  s3_bucket_name                = aws_s3_bucket.example_bucket.id
  include_global_service_events = true
}
