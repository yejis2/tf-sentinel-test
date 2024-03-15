resource "random_id" "example" {
  byte_length = 8
}


resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-${random_id.example.hex}"
  acl    = var.acl_enabled ? "private" : "public-read" # ACL을 활성화 또는 비활성화합니다.

  tags = {
    Name        = "ExampleBucket"
    Environment = "Production"
  }
}

# variables.tf 코드
variable "acl_enabled" {
  type    = bool
  default = true # ACL을 활성화하려면 true로 설정하세요. 비활성화하려면 false로 변경하세요.
}
