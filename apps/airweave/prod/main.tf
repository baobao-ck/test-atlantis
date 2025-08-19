resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "bucket" {
  bucket = "test-prod-airweave-bucket-${random_id.bucket_suffix.hex}"

  tags = {
    Name          = "Test-airweave-prod-hichiLotie"
    ProvisionedBy = "Atlantis"
  }
}