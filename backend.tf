terraform {
  backend "s3" {
    bucket         = "tt-s3-pb-prod-tfs"
    key            = "terraform.tfstate"  
    region         = "us-east-2"
    use_lockfile   = true
    dynamodb_table = "tt-ddb-pb-prod-lt"
    encrypt        = true
  }
}
