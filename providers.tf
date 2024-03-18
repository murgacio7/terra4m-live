provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket                  = "terraform-s3-state"
    key                     = "my-terraform-project"
    shared_credentials_file = "~/.aws/credentials"
  }
}

