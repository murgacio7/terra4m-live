terraform {
  required_version = ">= 1.6.0, <= 1.6.6"
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

  backend "s3" {
    bucket                  = "terraform-s3-state"
    key                     = "my-terraform-project.tfstate"
    region                  = "us-east-2"
    shared_credentials_file = "~/.aws/credentials"
  }
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "terraform-s3-state"
  acl    = "private"

  tags = {
    Name = "Terraform State Bucket"
  }
}

resource "awscc_ecr_repository" "second-repo" {
  repository_name      = "project-02"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration = {
    scan_on_push = true
  }
}
