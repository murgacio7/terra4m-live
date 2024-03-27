terraform {
  backend "gcs" {
    bucket  = "tfstate_backend"
    prefix  = "terraform/state"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }
  }
}


