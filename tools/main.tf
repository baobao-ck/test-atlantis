resource "random_id" "bucket_suffix" {
  byte_length = 2
}

resource "aws_s3_bucket" "bucket" {
  bucket = "test-atlantis-bucket-${random_id.bucket_suffix.hex}"

  tags = {
    Name          = "Test-d"
    ProvisionedBy = "Atlantis"
  }
}

resource "aws_dynamodb_table" "dynamodb_table" {
  name = "test-atlantis-dynamodb-table-${random_id.bucket_suffix.hex}"

  attribute {
    name = "Id"
    type = "S"
  }
}