terraform {
  backend "s3" {
    bucket         = "tt-s3-pb-prod-ltt"
    key            = "terraform.tfstate"  
    region         = "us-east-2"
    dynamodb_table = "tt-ddb-pb-prod-lt"
    encrypt        = true
  }
}
