terraform {
  required_version = "1.7.4"
  required_providers {
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 1.0"
    }
  }
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "terraform-s3-state"
  acl    = "private"

  tags = {
    Name = "Terraform State Bucket"
  }
}

terraform {
  backend "s3" {
    bucket                  = aws_s3_bucket.terraform_state_bucket.id
    key                     = "my-terraform-project.tfstate"
    region                  = "us-east-2"
    shared_credentials_file = "~/.aws/credentials"
  }
}

resource "awscc_ecr_repository" "second-repo" {
  repository_name      = "project-02"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration = {
    scan_on_push = true
  }
}
