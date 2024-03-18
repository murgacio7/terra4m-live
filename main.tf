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


resource "awscc_ecr_repository" "second-repo" {
  repository_name      = "project-02"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration = {
    scan_on_push = true
  }
}