resource "random_id" "bucket_suffix" {
  byte_length = 2
}

resource "aws_s3_bucket" "bucket" {
  bucket = "test-atlantis-bucket-${random_id.bucket_suffix.hex}"

  tags = {
    Name          = "Test-"
    ProvisionedBy = "Atlantis"
  }
}

# resource "aws_dynamodb_table" "dynamodb_table" {
#   name           = "my-table"
#   billing_mode   = "PROVISIONED"
#   read_capacity  = 1
#   write_capacity = 1
#   hash_key       = "Id"

#   attribute {
#     name = "Id"
#     type = "S"
#   }

#   tags = {
#     Name = "MyTable"
#   }
# }
