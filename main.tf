terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAEU526GEPK72Y337"
  secret_key = "jNFcfqt2t6qKiGfMEhlhs4qEeB7pA1AeXpIaaG2v"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}
